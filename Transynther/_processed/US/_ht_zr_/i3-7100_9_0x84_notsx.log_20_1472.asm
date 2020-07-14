.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11176, %r15
nop
cmp %r10, %r10
mov (%r15), %r14w
nop
nop
nop
cmp $7671, %r11
lea addresses_A_ht+0x8679, %r9
nop
nop
and $61307, %rdi
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
xor %r11, %r11
lea addresses_UC_ht+0x13376, %r11
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x43e, %r14
nop
nop
nop
nop
xor $36823, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%r14)
nop
sub $9636, %r10
lea addresses_normal_ht+0x15776, %rbp
nop
nop
sub $4760, %rdi
movb (%rbp), %r14b
add $3403, %rbp
lea addresses_WT_ht+0x116f6, %rsi
lea addresses_D_ht+0x1315e, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $118, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_WT_ht+0x4876, %rsi
lea addresses_WC_ht+0xeff6, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $103, %rcx
rep movsl
nop
cmp %r10, %r10
lea addresses_normal_ht+0x153f6, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
cmp $43084, %r14
lea addresses_A_ht+0x4da6, %rdi
nop
nop
nop
inc %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $43014, %r15
lea addresses_WT_ht+0x10476, %r10
nop
and %rsi, %rsi
mov (%r10), %r15
nop
and $27304, %rsi
lea addresses_WC_ht+0xaf76, %rsi
lea addresses_WC_ht+0x1b436, %rdi
nop
nop
nop
xor $24940, %r14
mov $24, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x197ae, %r11
clflush (%r11)
nop
and $9039, %rbp
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
and %r10, %r10
lea addresses_D_ht+0x1e8b6, %rdi
nop
and %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1a9dc, %rsi
lea addresses_UC_ht+0x1402e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r11, %r11
mov $115, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $53344, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x1e776, %r9
nop
nop
nop
dec %rdi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'49': 7, '00': 1, '44': 12}
44 44 49 00 44 44 44 44 49 49 44 44 44 44 44 49 49 44 49 49
*/
