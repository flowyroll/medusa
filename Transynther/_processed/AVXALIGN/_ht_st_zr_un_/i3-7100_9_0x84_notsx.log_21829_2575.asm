.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a52a, %rsi
lea addresses_UC_ht+0x1642, %rdi
xor $59300, %r14
mov $120, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x49f4, %r11
nop
nop
nop
nop
sub $2847, %rdi
movb (%r11), %r13b
nop
add $52395, %r14
lea addresses_normal_ht+0xa72a, %rcx
clflush (%rcx)
dec %rbp
movl $0x61626364, (%rcx)
dec %r13
lea addresses_A_ht+0x1d7aa, %rdi
nop
nop
and $64861, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xca6a, %rsi
nop
and %r14, %r14
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x372a, %rsi
nop
mfence
movb (%rsi), %cl
nop
nop
nop
xor $3317, %r13
lea addresses_WC_ht+0xf24f, %rbp
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rbp
movaps %xmm2, (%rbp)
nop
nop
add $20048, %r11
lea addresses_WT_ht+0xd12, %rdi
xor $62888, %r11
movb (%rdi), %r13b
cmp %rcx, %rcx
lea addresses_normal_ht+0x25d6, %rcx
inc %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x4cba, %rsi
lea addresses_D_ht+0x1aa2a, %rdi
nop
nop
nop
nop
cmp $36051, %r15
mov $70, %rcx
rep movsb
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x21aa, %r14
nop
nop
cmp $48968, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
nop
cmp $54016, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x1932a, %r12
nop
nop
xor %rdx, %rdx
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x1b92a, %r13
nop
nop
nop
nop
nop
inc %rbx
movb $0x51, (%r13)
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0xbbdd, %rcx
cmp %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_WC+0x5dd0, %r13
nop
nop
nop
cmp $19560, %rcx
movb (%r13), %dl
nop
nop
nop
nop
nop
cmp $13005, %r13

// Store
lea addresses_PSE+0xef2a, %rbx
nop
nop
nop
and $15389, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
dec %rcx

// Faulty Load
lea addresses_PSE+0xef2a, %r11
nop
nop
nop
nop
xor $27109, %rdx
vmovaps (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'68': 4, '08': 2, '49': 26, '3b': 3, '44': 70, 'cc': 1, '46': 5227, '00': 16488, 'ff': 5, '40': 3}
00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 46 46 00 00 46 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 49 00 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 46 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 46 46 00 46 00 00 00 00 46 00 00 46 00 46 00 46 00 46 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 46 00 46 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 46 46 46 46 46 46 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 44 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 00 00 46 00 46 46 46 46 46 00 46 00 00 46 00 00 00 00 00 00 46 46 00 00 46 46 00 00 46 00 00 00 00 00 00 00 46 00 46 44 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 46 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 46 46 46 46 46 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 46 44 00 46 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 46 00 46 00 00 00 46 46 46 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 46 46 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 46 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 44 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 46 00 00 00 00 46 00 46 46 00 46 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46
*/
