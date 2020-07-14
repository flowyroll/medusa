.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x140dc, %rdx
nop
nop
nop
and $23145, %rbx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xb55c, %rcx
sub $53862, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
and $25901, %rbx
lea addresses_WC_ht+0x1ed5c, %r11
clflush (%r11)
add $19913, %rdi
movb $0x61, (%r11)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x19ae0, %r12
nop
nop
nop
nop
mfence
movw $0x6162, (%r12)
nop
add $8301, %r12
lea addresses_D_ht+0x737c, %rdx
nop
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1d5c, %rsi
lea addresses_UC_ht+0x15d5c, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $114, %rcx
rep movsb
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x5a24, %r11
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xac5c, %rcx
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xd55c, %r12
nop
xor %rcx, %rcx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xe86c, %rbx
nop
nop
add $42593, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0xcfdc, %rsi
lea addresses_D_ht+0xd55c, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $58, %rcx
rep movsb
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0xcd5c, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $13513, %rax
movb (%r15), %cl
nop
add $55470, %rdi

// Store
lea addresses_normal+0x125dc, %r15
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_D+0xd401, %rsi
lea addresses_WT+0x1b15c, %rdi
nop
nop
nop
nop
xor $16943, %r15
mov $85, %rcx
rep movsw
nop
nop
nop
nop
and $62715, %r13

// Faulty Load
lea addresses_A+0x1cd5c, %rax
nop
nop
nop
nop
xor %rsi, %rsi
vmovaps (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'36': 1}
36
*/
