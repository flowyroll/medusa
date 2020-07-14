.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19131, %r15
nop
nop
nop
nop
nop
xor $62903, %rsi
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
nop
xor %rbx, %rbx
lea addresses_A_ht+0xc4fd, %rdi
nop
add $30039, %r12
movb (%rdi), %r15b
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1df7d, %rsi
lea addresses_A_ht+0xbc5d, %rdi
nop
xor $39487, %r11
mov $15, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1793d, %rdi
xor %rsi, %rsi
mov (%rdi), %r10d
nop
nop
nop
nop
and $49263, %r12
lea addresses_normal_ht+0xf18d, %rsi
lea addresses_WC_ht+0xa76d, %rdi
add %r10, %r10
mov $52, %rcx
rep movsb
and $2005, %rcx
lea addresses_WT_ht+0xf59d, %r15
xor %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0x5e3d, %rsi
lea addresses_UC_ht+0x1d04d, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $70, %rcx
rep movsb
and $15602, %r15
lea addresses_WT_ht+0x1d63d, %r15
nop
sub $18938, %r12
movups (%r15), %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1388d, %r15
nop
xor %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
inc %r11
lea addresses_A_ht+0x1be3d, %r15
nop
add %r10, %r10
movl $0x61626364, (%r15)
nop
nop
cmp $50077, %rcx
lea addresses_A_ht+0x4695, %r12
nop
nop
nop
nop
nop
dec %r15
movw $0x6162, (%r12)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x112b5, %rbx
xor $24943, %r11
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x1880b, %r12
clflush (%r12)
nop
add $59575, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
dec %r15
lea addresses_normal_ht+0x1ba5c, %rcx
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
cmp $4945, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x463d, %rdx
nop
inc %rdi
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
nop
nop
nop
xor $59548, %r9

// Store
lea addresses_WC+0x1673, %rdx
nop
nop
add $32337, %rsi
movw $0x5152, (%rdx)
nop
nop
nop
cmp $14358, %rsi

// Store
mov $0xa3d, %rcx
add $52338, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
sub %r13, %r13

// Store
lea addresses_WC+0x16a07, %r9
nop
nop
and %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
nop
add $10593, %rsi

// Store
lea addresses_UC+0xf763, %rcx
nop
nop
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%rcx)
inc %rdi

// Faulty Load
mov $0x3531350000000e3d, %r12
nop
nop
nop
nop
nop
dec %rdx
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'44': 5757, '45': 6048, '49': 10013, '48': 11}
45 49 49 44 45 49 45 49 44 45 49 49 44 45 49 49 49 44 45 49 44 45 44 45 49 49 44 45 49 49 49 44 45 44 45 49 49 44 45 49 49 49 49 44 45 49 49 44 45 49 49 49 49 49 44 45 49 44 45 49 49 44 45 49 44 45 44 45 49 49 49 49 49 49 49 44 45 49 49 44 45 49 49 44 45 49 44 45 45 49 49 44 45 49 49 44 45 49 49 49 44 45 44 45 49 44 45 44 45 44 45 49 49 49 44 45 49 49 44 45 44 45 44 45 49 49 49 49 49 44 45 49 44 45 49 44 45 49 45 49 49 44 45 49 44 45 44 45 49 44 45 49 49 49 49 44 45 44 45 49 49 49 49 49 49 44 45 49 49 44 45 49 49 49 44 45 49 49 49 45 44 45 44 45 49 44 45 49 49 44 45 44 45 44 45 49 49 49 49 49 49 44 45 44 45 49 44 45 49 44 45 49 44 45 49 49 44 45 49 49 44 45 49 49 44 45 49 44 45 49 44 45 49 49 49 49 44 45 49 44 45 49 44 45 49 49 49 49 44 45 49 49 44 45 49 49 49 49 49 44 45 44 45 49 44 45 49 49 49 49 44 45 49 49 49 44 45 44 45 49 49 49 44 45 49 49 44 45 49 49 49 49 49 49 49 44 45 49 49 44 45 49 44 45 44 45 44 45 49 49 49 49 44 45 49 49 44 45 49 49 44 45 49 49 44 45 49 49 44 45 49 49 44 45 44 45 49 44 45 49 49 49 49 44 45 44 45 49 44 45 44 45 49 44 45 49 49 45 44 45 44 45 49 49 44 45 49 49 44 45 49 49 44 45 49 44 45 49 44 45 49 49 49 49 44 45 44 45 44 45 44 45 49 49 49 49 44 45 49 49 44 45 49 49 49 49 49 44 45 49 44 45 49 49 44 45 49 44 45 49 44 45 45 49 49 49 49 49 44 45 49 44 45 45 44 45 49 44 45 44 45 49 49 44 45 44 45 49 49 44 45 49 44 45 44 45 49 49 49 49 44 45 49 44 45 49 44 45 49 49 44 45 44 45 49 49 44 45 49 49 49 49 49 44 45 44 45 49 49 49 44 45 49 44 45 44 45 44 45 49 49 44 45 49 49 49 44 45 44 45 44 45 49 44 45 49 44 45 49 44 45 49 44 45 49 49 49 49 44 45 49 44 44 48 45 49 44 45 49 44 45 49 44 45 49 44 45 49 49 44 45 44 45 49 44 45 49 44 45 49 49 49 44 45 49 44 45 49 49 44 45 44 45 44 45 49 49 44 45 49 49 44 45 44 45 44 45 49 49 49 49 49 44 45 49 49 44 45 49 44 45 49 44 45 49 44 45 49 44 45 49 44 45 49 49 44 45 49 44 45 49 49 44 45 49 44 45 49 49 49 49 44 45 44 45 44 45 49 44 45 49 44 45 44 45 49 49 44 45 49 49 49 44 45 44 45 44 45 49 44 45 49 44 45 44 45 49 49 44 45 49 44 45 49 44 45 49 44 45 49 44 45 49 49 45 49 44 45 44 45 49 44 45 49 49 44 45 49 44 45 49 44 45 49 49 49 44 45 44 49 49 44 45 44 45 49 49 44 45 44 45 49 49 49 44 45 49 49 44 45 44 45 49 44 45 49 49 49 44 45 49 44 45 49 44 45 44 45 49 44 45 49 49 49 49 44 45 49 49 44 45 49 49 49 49 44 45 44 45 44 45 44 45 49 49 49 49 44 45 49 49 44 45 44 45 44 45 44 45 49 44 45 44 45 49 49 44 45 44 45 49 49 44 45 49 44 45 49 44 45 49 49 49 49 44 45 49 49 44 45 49 49 49 44 45 44 45 44 45 49 44 45 44 45 49 44 45 49 49 49 49 44 45 49 49 44 45 49 44 45 49 49 49 49 49 44 45 49 44 45 49 44 45 49 49 49 49 44 45 49 49 44 45 49 49 49 49 44 45 49 49 44 45 49 49 49 49 49 49 49 49 44 45 49 49 44 45 49 44 45 49 49 49 49 44 45 44 45 49 49 49 49 49 49 44 45 49 44 45 49 44 45 49 49 44 45 44 45 44 45 49 49 49 49 49 49 44 45 44 45 49 44 45 49 49 44 45 44 45 44 45 49 49 44 45 44 45 49 49 44 45 44 45 49 44 45 44 45 49 49 44 45 49 44 45 49 45 49 44 45 49 49 49 44 45 49 49 44 45 49 44 45 49 49 49 49 44 45 44 45
*/
