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
lea addresses_A_ht+0x1272d, %r12
nop
nop
xor %r15, %r15
mov (%r12), %rbx
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x90bb, %rsi
lea addresses_A_ht+0x1bf55, %rdi
nop
nop
inc %rbx
mov $5, %rcx
rep movsb
nop
sub %r12, %r12
lea addresses_normal_ht+0x16c61, %rsi
lea addresses_WT_ht+0x185c5, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $37, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xeb35, %rdi
nop
nop
nop
nop
cmp $8143, %rdx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x13635, %rsi
lea addresses_normal_ht+0x1c335, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $64, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_normal_ht+0x1e935, %rsi
lea addresses_normal_ht+0x13465, %rdi
nop
nop
xor $18235, %rbx
mov $40, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1af35, %r15
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r15)
dec %rcx
lea addresses_A_ht+0x8d35, %r11
nop
nop
sub $23118, %r15
mov (%r11), %dx
nop
add $37661, %rcx
lea addresses_WT_ht+0x1c843, %rsi
lea addresses_WT_ht+0x8f35, %rdi
nop
nop
nop
sub %r15, %r15
mov $16, %rcx
rep movsw
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x8a15, %r11
sub $38576, %r12
mov (%r11), %bx
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x4f35, %rsi
lea addresses_D_ht+0xcb5, %rdi
nop
nop
and %r15, %r15
mov $89, %rcx
rep movsq
nop
sub $33036, %r12
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
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1c144, %r9
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0x7b35, %r12
xor $45304, %rdi
movb $0x51, (%r12)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_A+0x2825, %rbp
xor $30563, %r10
movw $0x5152, (%rbp)
nop
cmp $18401, %r12

// Load
lea addresses_WC+0x1dd25, %rcx
nop
nop
add $60669, %rdi
mov (%rcx), %ebp
nop
nop
nop
nop
add $33821, %r12

// REPMOV
lea addresses_WC+0x17335, %rsi
lea addresses_PSE+0xedb5, %rdi
nop
add %r10, %r10
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_PSE+0x1b35, %r10
nop
nop
sub %rsi, %rsi
mov (%r10), %r9d
nop
xor %r12, %r12

// Faulty Load
lea addresses_WC+0x17335, %r9
nop
nop
sub $40348, %r10
mov (%r9), %di
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
