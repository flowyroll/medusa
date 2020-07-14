.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x13d1e, %r11
nop
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r11)
nop
nop
sub $13685, %rdx
lea addresses_UC_ht+0xea82, %rsi
lea addresses_WT_ht+0x5622, %rdi
nop
nop
nop
cmp %r8, %r8
mov $54, %rcx
rep movsb
nop
xor $64159, %rdi
lea addresses_A_ht+0xa57a, %rdx
cmp $31524, %rdi
movb (%rdx), %cl
nop
dec %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xa3e2, %rdx
xor %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%rdx)
sub $46590, %rcx

// Store
lea addresses_WT+0x1caaf, %r11
nop
nop
nop
and $32153, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_A+0x1fba2, %r15
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
add $47799, %rcx

// Faulty Load
lea addresses_PSE+0x1682, %rdx
clflush (%rdx)
nop
nop
nop
sub $1794, %r15
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': True, 'NT': False}}
{'33': 19}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
