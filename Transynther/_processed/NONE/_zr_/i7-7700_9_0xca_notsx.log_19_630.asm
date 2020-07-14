.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x439b, %rsi
lea addresses_WT_ht+0x6295, %rdi
nop
nop
nop
dec %r11
mov $33, %rcx
rep movsq
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0xc99d, %r10
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r10), %r11
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x86c5, %rdi
nop
nop
sub %r12, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x146c5, %r12
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r12)
nop
add $53987, %r8
lea addresses_WT_ht+0x1b9c5, %rcx
add $47056, %rdi
movl $0x61626364, (%rcx)
nop
nop
and $59120, %r11
lea addresses_normal_ht+0x4ba5, %rcx
nop
and %r10, %r10
mov (%rcx), %rdi
nop
lfence
lea addresses_D_ht+0xdec5, %rsi
nop
nop
nop
nop
nop
xor $8724, %r10
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
xor $14095, %rsi
lea addresses_WC_ht+0x4dc5, %rsi
lea addresses_A_ht+0x26c5, %rdi
nop
nop
nop
sub %rax, %rax
mov $19, %rcx
rep movsb
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rdi
push %rsi

// Load
lea addresses_US+0x50e5, %r13
sub $9746, %rbx
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rsi
nop
xor $7265, %rdi

// Load
lea addresses_A+0xb3c4, %rbx
clflush (%rbx)
nop
add %r15, %r15
movntdqa (%rbx), %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_normal+0x1a4c5, %r13
clflush (%r13)
cmp %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovaps %ymm3, (%r13)
add $25198, %rbx

// Store
lea addresses_D+0x12545, %rdi
nop
inc %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rdi
vmovaps %ymm5, (%rdi)
nop
nop
nop
nop
nop
add $42231, %rsi

// Faulty Load
lea addresses_A+0xb6c5, %r10
nop
nop
nop
nop
add %r15, %r15
mov (%r10), %esi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
