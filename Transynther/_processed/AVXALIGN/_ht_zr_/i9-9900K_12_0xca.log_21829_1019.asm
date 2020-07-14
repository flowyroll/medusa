.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ecea, %rsi
lea addresses_D_ht+0x16076, %rdi
xor %rbx, %rbx
mov $108, %rcx
rep movsb
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1d1fa, %r8
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
xor $43404, %r8
lea addresses_normal_ht+0x162aa, %rsi
lea addresses_WC_ht+0xbcaa, %rdi
nop
nop
nop
nop
nop
add $63707, %rbp
mov $118, %rcx
rep movsw
nop
nop
nop
dec %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x390, %rdi
nop
nop
and $25344, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
and %rcx, %rcx

// Store
lea addresses_RW+0x634a, %r8
nop
nop
nop
nop
sub $52434, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r8)
cmp %r8, %r8

// Store
lea addresses_WT+0x1c1aa, %rdx
sub %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdx)
dec %rdi

// Faulty Load
lea addresses_PSE+0x1c8aa, %rcx
nop
nop
sub $52062, %r15
vmovaps (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'44': 15721, '45': 6107, '00': 1}
45 44 44 44 44 45 44 44 45 44 44 45 45 44 45 44 45 44 44 45 45 44 44 45 44 44 44 45 44 44 45 44 45 44 44 44 45 44 45 44 44 45 44 44 45 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 45 44 45 44 44 44 45 44 44 45 44 44 44 44 45 44 45 44 44 45 44 44 45 44 44 45 44 45 44 44 45 44 45 44 45 44 44 44 44 44 45 44 44 45 44 44 44 44 45 44 44 45 44 44 44 45 44 45 44 45 44 44 44 44 45 44 44 45 44 44 44 44 44 44 45 44 44 44 44 45 45 44 44 44 45 44 44 45 44 45 44 45 44 44 44 45 44 44 44 44 44 45 44 45 44 44 45 44 44 45 44 45 44 44 44 45 44 45 44 45 44 44 44 44 44 44 44 44 45 44 45 44 44 45 44 45 44 44 44 44 45 44 45 45 44 44 44 45 44 45 44 45 44 45 44 45 44 45 44 44 44 45 44 45 44 44 44 45 44 44 45 44 45 44 44 44 44 44 45 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 45 44 44 45 44 44 44 45 44 44 44 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 44 45 44 44 44 44 44 45 44 44 45 44 44 44 45 45 44 45 44 45 44 45 44 44 45 44 44 45 44 44 44 44 44 44 45 44 44 44 45 44 45 44 45 44 44 45 44 44 45 44 45 44 45 44 44 44 44 44 45 44 44 44 45 44 45 44 44 45 44 44 44 44 44 45 44 44 44 45 44 45 44 44 44 44 45 44 44 44 44 45 44 44 44 44 45 44 44 45 44 44 44 45 44 44 44 45 44 45 44 44 44 44 45 44 44 45 44 44 44 45 44 44 45 44 45 44 44 44 45 44 44 44 45 44 45 44 45 44 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 45 44 44 44 45 44 45 44 44 45 44 44 44 45 44 45 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 45 44 45 44 44 44 44 45 44 44 44 44 45 44 44 45 44 44 45 44 44 45 44 44 44 45 44 44 45 44 44 44 44 44 44 44 45 44 45 44 44 44 44 45 44 44 44 44 44 45 44 45 44 44 44 45 44 45 44 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 45 44 45 44 44 45 44 44 45 44 44 44 44 44 45 44 45 44 45 44 45 44 45 44 45 44 44 44 45 45 44 45 44 44 45 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 45 45 44 45 44 44 45 44 44 45 44 45 44 44 44 44 44 44 44 45 44 45 44 44 45 44 44 44 45 44 44 44 44 44 45 44 45 44 44 44 45 44 45 44 45 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 45 45 44 45 44 45 44 44 44 44 44 44 44 44 44 45 44 44 45 44 44 45 44 45 44 44 44 45 44 44 44 44 44 45 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 44 44 44 44 45 44 44 44 45 44 45 44 45 44 44 44 45 44 44 44 45 44 44 44 44 45 44 44 44 45 44 45 44 44 45 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 45 44 44 44 44 44 45 44 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 45 44 44 44 45 44 45 44 45 44 45 44 44 44 44 44 45 44 44 45 45 44 45 44 44 45 44 44 44 45 44 45 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 45 44 45 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 45 44 44 45 44 44 45 44 44 45 44 44 44 45 44 44 45 44 44 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 44 45 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 44 44 45 44 44 45 44 44 44 44 44 45 44 45 44 44 44 44 44 45 44 44 44 45 44 44 45 44 44 44 44 45 44 45 44 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 45 44 44 45 44 44 45
*/
