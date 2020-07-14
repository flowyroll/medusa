.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xec0d, %r13
clflush (%r13)
nop
nop
nop
add $8988, %rdx
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
dec %r11
lea addresses_UC_ht+0x162e1, %r9
nop
nop
nop
nop
nop
lfence
movl $0x61626364, (%r9)
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x22c9, %rsi
lea addresses_UC_ht+0x1ba08, %rdi
and $14966, %r11
mov $82, %rcx
rep movsb
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x10ce1, %rsi
lea addresses_A_ht+0x10ddd, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
add $3328, %r11
lea addresses_WC_ht+0xc015, %rdi
nop
dec %rcx
mov (%rdi), %rbp
inc %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x12b49, %r8
nop
nop
nop
nop
xor $30806, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_WT+0xcc9, %rcx
nop
nop
nop
nop
cmp $36727, %r9
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
nop
xor $2573, %r9

// Store
mov $0xb61, %rdi
clflush (%rdi)
sub $42232, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_PSE+0x1bcc9, %rdi
clflush (%rdi)
nop
nop
cmp %r9, %r9
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'33': 14}
33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
