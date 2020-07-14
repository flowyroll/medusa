.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c298, %r12
clflush (%r12)
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %r12
movaps %xmm6, (%r12)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x1ab58, %rbx
nop
add %r8, %r8
movb (%rbx), %r15b
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x17e9c, %rbx
nop
cmp %r10, %r10
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x8418, %r15
nop
and $45493, %r11
movl $0x61626364, (%r15)
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xab18, %rsi
lea addresses_normal_ht+0x14c35, %rdi
nop
nop
nop
add $38041, %r15
mov $119, %rcx
rep movsl
and %r15, %r15
lea addresses_normal_ht+0x7698, %rsi
lea addresses_UC_ht+0xb378, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $102, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x1c418, %rbx
nop
nop
xor %r15, %r15
mov (%rbx), %di
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x13bb8, %rsi
lea addresses_UC_ht+0x6398, %rdi
nop
nop
nop
nop
and $11329, %r8
mov $45, %rcx
rep movsw
add %r12, %r12
lea addresses_D_ht+0x167d8, %r11
clflush (%r11)
nop
cmp %rcx, %rcx
movw $0x6162, (%r11)
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1efc8, %rcx
clflush (%rcx)
sub $58678, %r15
mov (%rcx), %r10d
add $40446, %rsi
lea addresses_normal_ht+0x1da2c, %rsi
sub $4953, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Store
mov $0x38f900000000cc7, %r9
nop
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r9)
nop
nop
nop
cmp $48078, %rax

// Store
lea addresses_normal+0x15598, %r9
xor $44710, %r15
movl $0x51525354, (%r9)
nop
nop
nop
cmp $24360, %r10

// Load
mov $0x698, %rsi
nop
cmp %r15, %r15
mov (%rsi), %rax
sub $64880, %rdi

// Faulty Load
lea addresses_A+0x1f698, %r9
nop
nop
nop
xor $7461, %rdi
mov (%r9), %r15w
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
