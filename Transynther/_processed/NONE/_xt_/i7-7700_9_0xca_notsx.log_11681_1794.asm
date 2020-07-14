.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x101a6, %rsi
nop
nop
nop
add %r13, %r13
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
add $38782, %rax
lea addresses_A_ht+0x11bb1, %rax
nop
add %r9, %r9
mov (%rax), %rdx
nop
nop
nop
nop
nop
and $9040, %r9
lea addresses_D_ht+0x10631, %rax
nop
sub $20630, %r14
mov (%rax), %r9
sub $50039, %rsi
lea addresses_WC_ht+0x8731, %r9
nop
nop
nop
dec %rsi
mov (%r9), %r13d
nop
nop
and $32954, %rax
lea addresses_normal_ht+0xde31, %rsi
lea addresses_WC_ht+0xa1a1, %rdi
nop
nop
nop
sub $16888, %rdx
mov $36, %rcx
rep movsw
add $64561, %rdx
lea addresses_D_ht+0x96b1, %rsi
lea addresses_WT_ht+0x1da31, %rdi
xor %r14, %r14
mov $22, %rcx
rep movsw
sub $54948, %rsi
lea addresses_normal_ht+0x19fc9, %r13
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
and $37792, %rdi
lea addresses_D_ht+0xae31, %r10
sub %r14, %r14
movb $0x61, (%r10)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x8ae3, %rcx
clflush (%rcx)
cmp $48764, %rsi
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x19b81, %rsi
lea addresses_WT_ht+0xdb59, %rdi
nop
sub $3157, %rax
mov $7, %rcx
rep movsq
sub $13133, %r10
lea addresses_WC_ht+0x11a31, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub $56760, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x3e31, %rsi
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1b2b1, %rdi
nop
nop
nop
nop
add $53424, %r13
movb (%rdi), %r10b
cmp $21639, %rsi
lea addresses_WT_ht+0xfa31, %r14
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
add $30657, %rsi
lea addresses_UC_ht+0x431, %rsi
lea addresses_UC_ht+0xab35, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $58211, %r9
mov $125, %rcx
rep movsq
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xce31, %rsi
lea addresses_D+0x1ca31, %rdi
nop
sub $62001, %r11
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_A+0x9ec1, %rdi
nop
nop
nop
dec %r8
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
inc %r11

// Load
lea addresses_A+0xce31, %rax
nop
and $55789, %r8
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
inc %rcx

// Store
mov $0x1f1, %rsi
nop
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_A+0x159c1, %rcx
nop
nop
nop
nop
nop
and $169, %rsi
movl $0x51525354, (%rcx)
nop
nop
nop
sub $33721, %r15

// Store
lea addresses_WC+0x6e31, %rsi
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)
dec %rdi

// Store
lea addresses_normal+0x94f1, %rdi
and $61889, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
and $62316, %r8

// Store
lea addresses_A+0x18c31, %r15
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
nop
and $19646, %rsi

// Load
lea addresses_D+0x2bb1, %r15
nop
nop
cmp %rsi, %rsi
mov (%r15), %rdi
nop
cmp $7450, %r11

// Store
mov $0x2444b3000000081d, %r11
sub %rsi, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_A+0xce31, %rdi
nop
nop
add $55997, %rsi
movb (%rdi), %cl
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'35': 11681}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
