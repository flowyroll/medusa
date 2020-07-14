.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xed7e, %r9
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
add $45932, %r9
lea addresses_WT_ht+0x191a8, %rbp
nop
sub $38027, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x1e3e, %rsi
lea addresses_A_ht+0x3bbe, %rdi
clflush (%rsi)
sub $51989, %r14
mov $30, %rcx
rep movsb
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0xf83e, %rsi
lea addresses_WC_ht+0x13dde, %rdi
clflush (%rdi)
nop
nop
nop
inc %r15
mov $38, %rcx
rep movsl
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0xc48, %rsi
lea addresses_A_ht+0x15e3e, %rdi
cmp $24164, %rbp
mov $88, %rcx
rep movsl
nop
nop
nop
nop
nop
add $36050, %rcx
lea addresses_normal_ht+0x1983e, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov (%rsi), %r9d
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x167f6, %r9
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
cmp $63255, %r14
lea addresses_normal_ht+0x16c9e, %rsi
lea addresses_WC_ht+0x17e3e, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $96, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $44119, %rdi
lea addresses_WT_ht+0x130ca, %rbp
nop
nop
nop
dec %r9
mov (%rbp), %ecx
nop
and %r9, %r9
lea addresses_normal_ht+0x8366, %r14
nop
nop
nop
nop
nop
xor $50599, %r9
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
add $27873, %r15
lea addresses_A_ht+0x1511e, %r15
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x197fe, %r13
nop
nop
add %rsi, %rsi
mov (%r13), %bp
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x4eb0, %rdi
nop
nop
nop
nop
nop
add $54039, %rsi
mov (%rdi), %r15d
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x43e, %r14
nop
nop
nop
nop
nop
add $25509, %r9
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rbp
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_WT+0xd56e, %rax
nop
nop
add $4812, %rbp
mov (%rax), %rdi
nop
nop
nop
sub %rdi, %rdi

// Load
mov $0x252f090000000ebe, %rsi
dec %rbx
mov (%rsi), %r15d
nop
nop
nop
nop
add $5885, %rsi

// Store
lea addresses_PSE+0x7de, %rbx
nop
nop
nop
nop
nop
inc %rdi
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WT+0x1de3e, %rax
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
and %rbx, %rbx

// Faulty Load
lea addresses_RW+0x1363e, %rdi
nop
nop
nop
cmp $59320, %rsi
movb (%rdi), %r11b
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 227}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
