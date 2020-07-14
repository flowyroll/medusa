.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5cbb, %r8
nop
nop
nop
xor $14175, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r8)
cmp %rsi, %rsi
lea addresses_UC_ht+0x1312e, %rsi
lea addresses_D_ht+0x1c54e, %rdi
nop
xor %rdx, %rdx
mov $94, %rcx
rep movsl
nop
xor $19165, %r13
lea addresses_A_ht+0x1aaae, %rsi
nop
add %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0xb52e, %rsi
lea addresses_WC_ht+0x1b62e, %rdi
nop
nop
nop
sub %r11, %r11
mov $1, %rcx
rep movsb
nop
nop
and $57795, %rdi
lea addresses_WT_ht+0x19ece, %rsi
lea addresses_WT_ht+0x171ae, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $47848, %r13
mov $20, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $36180, %r8
lea addresses_A_ht+0x1044e, %rdx
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
lfence
lea addresses_UC_ht+0x14d6e, %r8
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %r8
movntdq %xmm6, (%r8)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x131ae, %rsi
lea addresses_WT_ht+0x2243, %rdi
nop
nop
nop
nop
inc %r13
mov $66, %rcx
rep movsw
nop
inc %r13
lea addresses_WT_ht+0x18ae, %rsi
lea addresses_A_ht+0x16ae, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $50674, %rbx
mov $112, %rcx
rep movsw
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xbcee, %r11
clflush (%r11)
nop
nop
nop
nop
xor $39333, %rbx
movb (%r11), %cl
nop
nop
and $3895, %rbx
lea addresses_A_ht+0x32ae, %rsi
lea addresses_D_ht+0x1a8ae, %rdi
nop
nop
sub $63650, %r13
mov $123, %rcx
rep movsq
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x6128, %rdx
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x14e76, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $535, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
and $14983, %r8
lea addresses_WT_ht+0x1792d, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
sub $26879, %rsi
lea addresses_WC_ht+0x12ae, %rsi
lea addresses_WT_ht+0xa1fe, %rdi
nop
and $39810, %r8
mov $67, %rcx
rep movsq
nop
nop
sub $29995, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbx

// Faulty Load
lea addresses_RW+0x42ae, %r12
nop
nop
nop
nop
cmp %r10, %r10
mov (%r12), %ebx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
