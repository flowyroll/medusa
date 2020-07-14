.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x754e, %rbx
nop
nop
nop
dec %rdx
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %r10
xor $51609, %r10
lea addresses_normal_ht+0x13344, %r14
nop
nop
nop
nop
add %rbp, %rbp
mov (%r14), %ax
nop
and $49820, %r14
lea addresses_D_ht+0x8744, %rsi
lea addresses_A_ht+0x9344, %rdi
nop
nop
nop
nop
sub $59474, %r14
mov $24, %rcx
rep movsq
nop
nop
nop
inc %rbx
lea addresses_A_ht+0x1a1de, %rsi
lea addresses_UC_ht+0x19744, %rdi
nop
nop
nop
nop
xor $63424, %rbp
mov $10, %rcx
rep movsw
nop
and $8177, %r10
lea addresses_WC_ht+0x1a038, %rbp
nop
nop
nop
nop
cmp $23567, %rcx
mov (%rbp), %rax
nop
and %rdi, %rdi
lea addresses_WC_ht+0x8f3c, %rsi
nop
nop
nop
nop
lfence
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub $54988, %rsi
lea addresses_WC_ht+0x16f44, %rsi
lea addresses_WC_ht+0x10544, %rdi
cmp %rbp, %rbp
mov $13, %rcx
rep movsb
nop
inc %rsi
lea addresses_A_ht+0x6144, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
movb (%r10), %al
nop
xor $52936, %rdx
lea addresses_D_ht+0x11844, %rsi
dec %rdx
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
nop
and $7383, %rsi
lea addresses_UC_ht+0x1092e, %rsi
lea addresses_WC_ht+0x19b44, %rdi
nop
nop
nop
nop
mfence
mov $45, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x1c814, %rsi
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x15744, %rsi
lea addresses_normal_ht+0xcb44, %rdi
inc %rax
mov $42, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x7484, %rdi
nop
and %rcx, %rcx
mov (%rdi), %bx
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x266e, %r14
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
sub $59902, %r14

// Store
lea addresses_UC+0x9944, %r11
nop
inc %r8
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_A+0x1b44, %r14
nop
xor %rsi, %rsi
movw $0x5152, (%r14)
nop
nop
sub %rsi, %rsi

// Store
lea addresses_UC+0x15684, %r11
nop
dec %rdi
movl $0x51525354, (%r11)
nop
dec %rdx

// Store
lea addresses_PSE+0xe644, %rdx
nop
nop
dec %r11
movw $0x5152, (%rdx)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_PSE+0x18b44, %r11
sub %r14, %r14
movb $0x51, (%r11)
nop
nop
nop
and %rdx, %rdx

// Store
mov $0x6b54a50000000df4, %r15
nop
add $1826, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r15)
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_A+0x1b44, %r15
nop
nop
nop
cmp %rdx, %rdx
mov (%r15), %r8w
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': True, 'congruent': 8, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 59}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
