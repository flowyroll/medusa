.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8155, %rsi
lea addresses_A_ht+0x19355, %rdi
clflush (%rsi)
nop
nop
sub $5210, %r11
mov $7, %rcx
rep movsq
add $12879, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_normal+0x8945, %r10
nop
nop
nop
nop
nop
xor $40171, %r15
mov $0x5152535455565758, %r8
movq %r8, (%r10)
nop
nop
nop
nop
cmp $6104, %r8

// Store
lea addresses_US+0x18955, %r12
nop
and $57625, %r10
movw $0x5152, (%r12)
nop
nop
nop
inc %r8

// Faulty Load
lea addresses_US+0xd655, %r10
nop
nop
nop
inc %rax
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
