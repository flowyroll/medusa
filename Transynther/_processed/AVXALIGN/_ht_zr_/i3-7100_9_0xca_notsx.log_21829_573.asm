.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14ed9, %rdx
add %rcx, %rcx
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
inc %r8
lea addresses_WT_ht+0xbd21, %rdi
clflush (%rdi)
nop
add $4673, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x9021, %r8
nop
nop
nop
nop
sub %rax, %rax
mov (%r8), %edi
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0xcf21, %rax
nop
nop
nop
nop
nop
add $51187, %rdx
movw $0x6162, (%rax)
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x163a1, %rsi
lea addresses_WT_ht+0x99e1, %rdi
nop
nop
nop
sub $6242, %r13
mov $62, %rcx
rep movsq
nop
nop
nop
cmp $18098, %rdi
lea addresses_UC_ht+0x1ca21, %rsi
nop
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rsi)
nop
nop
dec %rcx
lea addresses_A_ht+0x11c19, %rcx
nop
nop
nop
xor $51283, %rax
mov (%rcx), %rdx
nop
sub $49280, %r13
lea addresses_D_ht+0x1d621, %r8
nop
sub $8355, %rsi
mov (%r8), %r13w
nop
nop
nop
nop
nop
xor $31416, %rdx
lea addresses_UC_ht+0x19761, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xed51, %rsi
nop
nop
nop
sub $34644, %rax
movb $0x61, (%rsi)
xor $51694, %rdx
lea addresses_UC_ht+0x13939, %rcx
nop
nop
nop
nop
nop
add $34153, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
cmp $31335, %rdx
lea addresses_WT_ht+0xb5b1, %rdx
nop
nop
nop
nop
and $33248, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rdx)
add %rax, %rax
lea addresses_UC_ht+0x18e21, %rsi
nop
sub %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xef3, %rdx
nop
nop
nop
nop
nop
dec %rcx
mov (%rdx), %rdi
nop
nop
nop
nop
and $20616, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbx

// Store
lea addresses_UC+0x7e21, %r12
nop
nop
nop
nop
nop
dec %r11
movl $0x51525354, (%r12)

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
and $62441, %r14

// Load
lea addresses_WC+0x2e21, %r12
and %r10, %r10
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
and $20346, %r15

// Store
lea addresses_D+0x5e21, %r10
nop
nop
nop
nop
nop
sub $18909, %r11
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0x19221, %r15
nop
nop
and $36744, %r14
movw $0x5152, (%r15)
cmp $45687, %r11

// Load
lea addresses_RW+0x5621, %r10
nop
nop
nop
nop
and %r9, %r9
movb (%r10), %r15b
nop
nop
nop
nop
nop
xor $4681, %r10

// Store
lea addresses_UC+0x1b8a1, %r12
and %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r12)
nop
nop
dec %r10

// Faulty Load
lea addresses_WC+0x2e21, %r14
nop
nop
nop
nop
cmp $19957, %r12
movntdqa (%r14), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'45': 38, '00': 21791}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
