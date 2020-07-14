.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x59fa, %rsi
lea addresses_A_ht+0x1a8ca, %rdi
nop
nop
nop
nop
nop
and $1736, %r14
mov $70, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0xf7fa, %rsi
lea addresses_D_ht+0x2ffa, %rdi
nop
nop
nop
nop
and $56870, %r8
mov $127, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x171ba, %rsi
nop
nop
nop
and %r14, %r14
movb $0x61, (%rsi)
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1e67a, %rbp
nop
nop
nop
nop
dec %rdx
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp $20908, %r14
lea addresses_WC_ht+0xbeda, %rsi
lea addresses_A_ht+0x1b11e, %rdi
nop
nop
nop
inc %rdx
mov $121, %rcx
rep movsl
nop
nop
add $24205, %rbp
lea addresses_WT_ht+0x4588, %r8
nop
nop
nop
add $2432, %rcx
mov (%r8), %r14
add $57269, %rdi
lea addresses_normal_ht+0x12dba, %rsi
nop
nop
nop
nop
nop
and %rdx, %rdx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r14
nop
and $64612, %rbp
lea addresses_A_ht+0x59fa, %r8
add $46691, %rsi
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
sub $63783, %r8
lea addresses_A_ht+0x1dcfa, %rsi
nop
sub $60968, %rbp
mov (%rsi), %r14d
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x13b7a, %r14
nop
nop
nop
nop
and $25548, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r14)
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xfbfa, %rsi
lea addresses_UC_ht+0x197fa, %rdi
nop
nop
nop
and %r12, %r12
mov $127, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $56935, %r12
lea addresses_A_ht+0xf7fa, %r12
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
sub $63924, %r12
lea addresses_A_ht+0xbdda, %rdx
xor $49853, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rdx)
nop
and $39289, %rbp
lea addresses_WC_ht+0x3dfa, %r14
and $58928, %rbp
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
cmp $29720, %rdx
lea addresses_normal_ht+0x1d5fa, %r14
clflush (%r14)
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r14), %edx
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
mov $0x2fc1dc00000000da, %r8
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r8)
xor $41754, %r9

// Store
lea addresses_D+0x83fa, %r14
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0xcdba, %rax
nop
dec %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
cmp $17674, %r14

// Store
lea addresses_UC+0x108fa, %rax
nop
nop
nop
nop
nop
xor $31639, %r14
movl $0x51525354, (%rax)
nop
nop
nop
nop
inc %r9

// Faulty Load
mov $0x10c36b00000003fa, %r14
cmp %r8, %r8
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'46': 5, '00': 191}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
