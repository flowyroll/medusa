.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15154, %r11
nop
nop
nop
nop
inc %r10
mov (%r11), %r8w
nop
xor $56510, %r12
lea addresses_WC_ht+0x18274, %r13
inc %r9
movb (%r13), %r12b
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x10df4, %rsi
lea addresses_UC_ht+0x4214, %rdi
nop
cmp $54895, %r8
mov $121, %rcx
rep movsb
add $21862, %rcx
lea addresses_A_ht+0x134d4, %r9
nop
nop
add $21056, %rbp
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x9df4, %rsi
lea addresses_WT_ht+0x1a4e0, %rdi
nop
nop
nop
nop
cmp $43992, %r10
mov $36, %rcx
rep movsb
nop
nop
nop
xor $33865, %r8
lea addresses_WT_ht+0x3314, %rsi
lea addresses_D_ht+0xcbc5, %rdi
clflush (%rsi)
and %r11, %r11
mov $106, %rcx
rep movsw
dec %r9
lea addresses_WC_ht+0x13714, %rsi
lea addresses_WT_ht+0x2cae, %rdi
cmp $24098, %r12
mov $79, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x18d34, %rbp
and %rdi, %rdi
movb $0x61, (%rbp)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x19398, %rsi
lea addresses_WC_ht+0x1314, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $40, %rcx
rep movsw
cmp %r12, %r12
lea addresses_WT_ht+0x1b314, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $9967, %r8
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
dec %r9
lea addresses_A_ht+0x6594, %r11
nop
nop
nop
nop
and $57198, %rcx
movb (%r11), %r10b
nop
add %rbp, %rbp
lea addresses_A_ht+0x12314, %rbp
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbp)
add %r8, %r8
lea addresses_WC_ht+0x18d14, %r13
nop
nop
xor %r8, %r8
movb $0x61, (%r13)
nop
dec %r13
lea addresses_WC_ht+0xd34d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $11409, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x7f14, %r13
nop
nop
cmp $42383, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rdx

// Load
lea addresses_D+0x17454, %rax
nop
cmp %rdx, %rdx
mov (%rax), %r11d
nop
dec %r9

// Store
lea addresses_WC+0x1ce54, %r11
nop
mfence
mov $0x5152535455565758, %rax
movq %rax, (%r11)
cmp %r11, %r11

// Store
lea addresses_normal+0xd654, %r13
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r13)
cmp %r9, %r9

// Load
lea addresses_WC+0x9064, %r13
nop
nop
sub $56843, %rbp
mov (%r13), %r9w
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x1cdf0, %rdx
nop
nop
cmp %r12, %r12
movb $0x51, (%rdx)
nop
nop
nop
cmp $50754, %r11

// Load
lea addresses_RW+0x1f2c3, %r11
nop
nop
nop
xor %rax, %rax
mov (%r11), %rdx
nop
nop
nop
nop
nop
sub $41229, %r13

// Load
lea addresses_RW+0x15914, %rax
nop
sub $32435, %rbp
mov (%rax), %r13w
nop
nop
nop
and $61128, %r9

// Store
lea addresses_D+0x17808, %r11
inc %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r11)
nop
inc %rbp

// Faulty Load
lea addresses_WC+0x2f14, %r9
nop
dec %r11
vmovaps (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 6, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'00': 21777, '49': 52}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
