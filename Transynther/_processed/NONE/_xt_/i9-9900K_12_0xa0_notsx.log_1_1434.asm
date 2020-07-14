.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d64b, %rax
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
cmp $29215, %rdi
lea addresses_UC_ht+0x13a8b, %rsi
lea addresses_UC_ht+0x37fb, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $64057, %r12
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x53fb, %rdi
dec %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
xor %rcx, %rcx
lea addresses_UC_ht+0x1dffb, %r12
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r12)
nop
nop
inc %rcx
lea addresses_A_ht+0x12849, %rdi
nop
nop
nop
nop
add %r8, %r8
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
xor $46016, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x821e100000006cf, %rcx
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_US+0x617b, %rsi
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add $37964, %rdx

// Faulty Load
lea addresses_normal+0xbffb, %rbp
xor $64629, %r10
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'34': 1}
34
*/
