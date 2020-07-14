.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xabd3, %rsi
lea addresses_UC_ht+0xaeb3, %rdi
xor $5148, %r9
mov $112, %rcx
rep movsq
add %r13, %r13
lea addresses_A_ht+0x7193, %rsi
lea addresses_WC_ht+0xbb3, %rdi
cmp %rdx, %rdx
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x16bb3, %rdx
nop
nop
and $2132, %r11
mov (%rdx), %r9d
nop
nop
nop
nop
nop
and $42091, %rsi
lea addresses_A_ht+0x12721, %rsi
lea addresses_UC_ht+0x10813, %rdi
nop
nop
sub %r10, %r10
mov $82, %rcx
rep movsb
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x175fe, %r10
add $38333, %rsi
mov (%r10), %r9
nop
xor %rsi, %rsi
lea addresses_D_ht+0x9613, %r13
nop
nop
nop
and %r11, %r11
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
add %r11, %r11
lea addresses_D_ht+0x15453, %r11
clflush (%r11)
nop
and %rsi, %rsi
mov (%r11), %rdi
nop
nop
nop
nop
xor $63595, %r9
lea addresses_WT_ht+0x5d0b, %rsi
nop
nop
nop
xor %rdx, %rdx
movb $0x61, (%rsi)
and %rcx, %rcx
lea addresses_UC_ht+0x11113, %rsi
nop
nop
cmp $50910, %r9
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x7193, %rsi
lea addresses_D_ht+0x1d8d3, %rdi
nop
nop
nop
and %r9, %r9
mov $2, %rcx
rep movsl
inc %r10
lea addresses_UC_ht+0x15173, %r13
nop
nop
nop
nop
nop
dec %r10
movb (%r13), %dl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x1da63, %r10
nop
sub $17103, %r9
movb $0x61, (%r10)
nop
nop
xor $33689, %rcx
lea addresses_A_ht+0x1b3d3, %rsi
lea addresses_WT_ht+0x1087b, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $103, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_D_ht+0x6d13, %rdi
nop
cmp $17326, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rdi)
nop
add $38607, %rsi
lea addresses_normal_ht+0x7a13, %r10
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r10)
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Load
lea addresses_WT+0xb53, %rcx
nop
nop
sub %rbx, %rbx
mov (%rcx), %r8
nop
cmp %r15, %r15

// Load
lea addresses_PSE+0x1021f, %r13
nop
nop
nop
nop
add %rax, %rax
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
cmp %rcx, %rcx

// Store
lea addresses_UC+0xaf13, %rax
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%rax)
nop
inc %rcx

// Store
lea addresses_UC+0x2813, %rbx
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
cmp $28015, %r15

// Store
lea addresses_WT+0x18853, %rbx
nop
add %rcx, %rcx
movw $0x5152, (%rbx)
cmp $10070, %r15

// Load
mov $0x5619f800000005bb, %r14
add %r15, %r15
mov (%r14), %rbx
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_A+0x1ae93, %r13
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r13)
nop
nop
nop
nop
dec %r15

// Store
mov $0x46616b0000000513, %r13
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r13)

// Exception!!!
nop
nop
mov (0), %rcx
cmp %r15, %r15

// Faulty Load
mov $0x46616b0000000513, %r13
nop
nop
nop
nop
nop
and %rax, %rax
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'45': 113, '08': 1, '00': 600, '47': 1, '46': 61}
00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 46 00 45 00 45 00 00 46 45 45 00 00 00 00 45 46 00 00 46 00 00 00 00 00 00 46 45 00 00 00 00 00 00 00 45 46 00 00 46 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 46 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 46 45 45 45 00 00 00 00 00 00 46 45 00 45 46 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 46 46 47 00 00 00 00 00 00 45 45 00 45 00 00 45 46 00 45 00 00 00 00 00 00 00 45 00 45 00 00 46 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 46 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 46 00 00 00 00 00 00 45 00 00 46 00 00 45 00 45 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 46 00 00 00 00 46 46 00 45 00 45 00 00 46 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 45 00 00 45 00 00 00 45 46 00 00 00 00 46 00 45 00 00 00 46 00 00 00 00 00 45 00 00 00 45 00 00 00 46 45 00 45 45 00 46 46 00 45 00 00 00 00 46 45 45 00 00 00 00 00 00 00 00 46 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 46 00 00 00 46 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 45 00 00 00 46 46 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 46 00 00 45 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 46 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 45 00 00 45 00 00 00 00 46 00 00 46 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 45 00 08 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 46 00 00 00 00 00 00 45 45 00 46 45 00 45 45 00 00 46 00 45 00 45 46 00 45 00 45 00 00 00 00 00 00 46 46 45 00 00 00 45 00 00 45 00 00 45 45 45 46 00 00 00 00 45 00 00 46 00 00 00 00 00 00 00 00 00 45 45 00 00 45 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 46 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00
*/
