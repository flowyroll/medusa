.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbx
push %rcx
lea addresses_WT_ht+0xc64f, %r13
nop
nop
nop
xor $38149, %r15
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rcx
nop
sub %rbx, %rbx
pop %rcx
pop %rbx
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x44f, %r13
nop
nop
sub %rbp, %rbp
mov (%r13), %dx
add %rdx, %rdx

// REPMOV
mov $0xe5f, %rsi
lea addresses_US+0x119af, %rdi
nop
nop
nop
nop
nop
lfence
mov $40, %rcx
rep movsl
nop
xor %r8, %r8

// Store
lea addresses_US+0x8acf, %rsi
nop
nop
nop
nop
cmp $27461, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%rsi)
nop
cmp $25146, %rcx

// Store
lea addresses_WT+0x13fa7, %r9
nop
and %r8, %r8
movb $0x51, (%r9)
nop
nop
nop
nop
add $36396, %r13

// Store
lea addresses_PSE+0x15f4f, %rbp
nop
nop
nop
sub $6908, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_WT+0x884f, %r13
nop
nop
nop
nop
nop
cmp $8567, %rbp
movb (%r13), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'00': 2}
00 00
*/
