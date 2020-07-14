.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc010, %rcx
nop
nop
add %rbp, %rbp
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1d8b0, %rax
nop
nop
nop
nop
nop
xor $40477, %rcx
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xb010, %rsi
lea addresses_WT_ht+0x14f0, %rdi
nop
nop
nop
nop
nop
sub $62929, %r12
mov $19, %rcx
rep movsb
sub %rsi, %rsi
lea addresses_normal_ht+0xbd0, %rdi
nop
nop
nop
xor %r12, %r12
movb (%rdi), %r10b
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x14010, %r9
nop
sub $62491, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r9)
nop
xor $57844, %r9

// Store
lea addresses_UC+0x6220, %rcx
nop
nop
nop
nop
nop
cmp $23160, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rcx)
nop
xor $56042, %rdi

// Store
mov $0x3d0, %rdi
nop
nop
nop
nop
nop
and $24768, %rsi
movb $0x51, (%rdi)
xor $53160, %rsi

// Faulty Load
lea addresses_A+0x14010, %rdi
nop
nop
nop
and %r10, %r10
movntdqa (%rdi), %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'58': 64}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
