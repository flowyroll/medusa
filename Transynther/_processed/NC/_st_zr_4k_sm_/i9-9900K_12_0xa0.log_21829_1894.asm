.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x10d56, %rbx
clflush (%rbx)
nop
nop
cmp %r14, %r14
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
cmp $25880, %rdx
lea addresses_D_ht+0xf506, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r8)
nop
nop
and $498, %rbx
lea addresses_D_ht+0x1b7e6, %rbx
nop
nop
lfence
mov (%rbx), %r11w
sub %rdx, %rdx
lea addresses_WC_ht+0x1eb66, %r8
nop
nop
sub $52894, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
xor $62397, %r11
lea addresses_WC_ht+0x4d26, %r10
nop
cmp $30540, %r14
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
inc %r11
lea addresses_WT_ht+0x5c66, %r10
dec %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1ca66, %rsi
lea addresses_A_ht+0xa26c, %rdi
xor $10070, %r10
mov $51, %rcx
rep movsw
nop
nop
nop
nop
nop
and $39026, %r11
lea addresses_UC_ht+0x13b06, %r14
clflush (%r14)
nop
nop
nop
sub %r11, %r11
mov (%r14), %r10
nop
nop
nop
cmp $35142, %r10
lea addresses_WC_ht+0x7aa6, %r10
xor $31752, %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x17886, %rsi
lea addresses_D_ht+0xb576, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $29, %rcx
rep movsb
inc %r14
lea addresses_D_ht+0x10f0e, %rsi
lea addresses_UC_ht+0x165ca, %rdi
clflush (%rsi)
and %r11, %r11
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
add $64613, %r14
lea addresses_D_ht+0xfe26, %rsi
lea addresses_UC_ht+0x5255, %rdi
dec %r14
mov $76, %rcx
rep movsw
sub $259, %r14
lea addresses_D_ht+0x18835, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $42251, %r14
mov (%r10), %rcx
cmp %rcx, %rcx
lea addresses_D_ht+0xb4da, %rbx
clflush (%rbx)
nop
nop
nop
and $33431, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
xor $9438, %r11
lea addresses_A_ht+0x6a66, %r14
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x61, (%r14)
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_normal+0x2056, %r15
nop
nop
nop
nop
and $10675, %rcx
movw $0x5152, (%r15)
nop
cmp %rax, %rax

// Store
lea addresses_US+0x1a926, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%r10)
nop
cmp $46763, %r10

// Load
lea addresses_PSE+0x19666, %r10
nop
nop
nop
cmp $21537, %rdx
mov (%r10), %ecx
nop
nop
cmp %r15, %r15

// Store
mov $0x648e3a0000000266, %rax
xor %rcx, %rcx
movl $0x51525354, (%rax)
nop
nop
dec %rcx

// Store
lea addresses_US+0xa266, %r14
nop
nop
nop
cmp %rdx, %rdx
movw $0x5152, (%r14)
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x14d86, %rcx
nop
nop
nop
nop
cmp $23449, %r9
movb $0x51, (%rcx)
nop
xor $63481, %rdx

// Store
mov $0x666, %r9
nop
cmp $28264, %r15
movw $0x5152, (%r9)
xor $32109, %r14

// Store
lea addresses_RW+0x491a, %rdx
nop
nop
nop
nop
nop
and $37476, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movntdq %xmm7, (%rdx)
nop
add $33298, %r10

// Store
lea addresses_normal+0xb866, %rcx
and %r15, %r15
movb $0x51, (%rcx)
nop
nop
nop
inc %rcx

// Faulty Load
mov $0x648e3a0000000266, %rcx
nop
nop
nop
dec %rax
mov (%rcx), %edx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'52': 21536, '00': 293}
52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52
*/
