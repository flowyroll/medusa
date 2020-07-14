.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6b5b, %r15
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x1920b, %r9
cmp %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r9)
nop
and $45823, %rsi
lea addresses_D_ht+0xa07b, %rsi
lea addresses_normal_ht+0x18f63, %rdi
nop
nop
nop
dec %rbx
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $48543, %r15
lea addresses_D_ht+0xab5b, %r9
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%r9), %cx
nop
nop
and $49203, %rcx
lea addresses_WT_ht+0xa70f, %rsi
lea addresses_normal_ht+0x435b, %rdi
nop
nop
nop
nop
cmp $25161, %r11
mov $119, %rcx
rep movsl
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x233, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r15)
nop
nop
inc %r15
lea addresses_D_ht+0x5f3b, %rsi
lea addresses_WC_ht+0xcb5b, %rdi
nop
nop
nop
sub %r13, %r13
mov $84, %rcx
rep movsw
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1d35b, %r13
nop
nop
nop
nop
nop
xor $615, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xa35b, %rsi
lea addresses_A_ht+0x76b2, %rdi
clflush (%rsi)
nop
nop
nop
and %r9, %r9
mov $67, %rcx
rep movsq
nop
nop
nop
sub $14470, %r13
lea addresses_UC_ht+0x15fdb, %rbx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rbx), %r9w
nop
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x1df5b, %rcx
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rcx), %r9
nop
nop
nop
nop
add $15265, %r13
lea addresses_WC_ht+0x1e20f, %r9
nop
nop
nop
add $16626, %rdi
mov (%r9), %r11w
nop
sub %r15, %r15
lea addresses_D_ht+0x19a7b, %r15
nop
nop
nop
nop
nop
inc %rbx
mov (%r15), %r13w
nop
sub $24183, %r15
lea addresses_normal_ht+0xf75b, %r13
nop
nop
dec %r15
mov (%r13), %rcx
cmp $57123, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x10373, %rdi
nop
nop
and $39618, %rsi
movb $0x51, (%rdi)
nop
nop
xor %r13, %r13

// Store
lea addresses_WC+0x1c35b, %rbx
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rbx)
nop
sub $59487, %rbx

// REPMOV
mov $0xb5b, %rsi
lea addresses_US+0x1f5b, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $35, %rcx
rep movsw
nop
nop
nop
add $39017, %rbx

// Store
mov $0xb5b, %rbx
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
nop
inc %r13

// Store
lea addresses_normal+0xeb5b, %r10
add %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_RW+0x1e35b, %r9
nop
nop
nop
nop
nop
cmp $25255, %r11
movb (%r9), %cl
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
