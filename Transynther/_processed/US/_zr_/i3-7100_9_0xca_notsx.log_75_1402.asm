.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x446e, %rsi
lea addresses_normal_ht+0x1b8fe, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $117, %rcx
rep movsw
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x1d8e, %rsi
lea addresses_WC_ht+0x97ee, %rdi
nop
nop
xor $16905, %r10
mov $35, %rcx
rep movsb
nop
nop
nop
nop
and $37536, %rdx
lea addresses_D_ht+0x1d1ee, %r11
clflush (%r11)
nop
nop
sub $5696, %rdi
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
and %r11, %r11
lea addresses_D_ht+0x141da, %rdi
and $54007, %r15
mov (%rdi), %cx
nop
nop
nop
nop
add $55025, %rsi
lea addresses_A_ht+0x1ec6e, %r11
nop
nop
xor $7589, %r15
mov (%r11), %r10d
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0xe562, %r10
nop
nop
xor $53729, %r15
movups (%r10), %xmm3
vpextrq $0, %xmm3, %rdi
xor $59115, %rsi
lea addresses_WC_ht+0x15d0e, %rdi
nop
nop
dec %rdx
movl $0x61626364, (%rdi)
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x12b0b, %rsi
lea addresses_D_ht+0x18c6e, %rdi
nop
nop
nop
dec %r14
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1e56e, %r14
nop
xor $14520, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x546e, %r15
nop
nop
nop
nop
nop
cmp $65218, %r13
mov (%r15), %dx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'00': 75}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
