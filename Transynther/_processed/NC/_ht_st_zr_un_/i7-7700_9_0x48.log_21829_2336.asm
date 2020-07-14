.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1af79, %rsi
lea addresses_A_ht+0x1a929, %rdi
nop
nop
sub %rdx, %rdx
mov $33, %rcx
rep movsq
nop
nop
nop
xor $55769, %r13
lea addresses_WC_ht+0x161a1, %rsi
lea addresses_WC_ht+0x1e979, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $24, %rcx
rep movsw
nop
nop
nop
inc %rdx
lea addresses_A_ht+0xa7c1, %r14
nop
nop
nop
nop
nop
inc %r13
mov (%r14), %rsi
sub %rcx, %rcx
lea addresses_UC_ht+0x13379, %rsi
lea addresses_normal_ht+0x4d39, %rdi
xor $16956, %r13
mov $83, %rcx
rep movsq
sub $58416, %rsi
lea addresses_D_ht+0x140b9, %rsi
lea addresses_UC_ht+0x131d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r9, %r9
mov $18, %rcx
rep movsq
nop
nop
and $33239, %r14
lea addresses_WT_ht+0x4379, %r9
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, (%r9)
xor %r9, %r9
lea addresses_WC_ht+0x15b79, %rsi
lea addresses_normal_ht+0x1dff9, %rdi
nop
nop
nop
nop
xor $2741, %r14
mov $50, %rcx
rep movsl
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x5df9, %rsi
nop
nop
nop
nop
sub $37616, %rcx
mov (%rsi), %r9d
nop
nop
nop
sub $22402, %rdi
lea addresses_D_ht+0x1656f, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $55252, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
add $6968, %rdx
lea addresses_UC_ht+0x1c2b4, %rsi
lea addresses_WT_ht+0x9b79, %rdi
nop
nop
inc %r15
mov $32, %rcx
rep movsb
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x17b79, %rdi
nop
nop
nop
nop
nop
add $62407, %rdx
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x13b79, %rsi
lea addresses_normal_ht+0x5999, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
sub %rdx, %rdx
mov $114, %rcx
rep movsq
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x8809, %rax
nop
xor %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
nop
add $17688, %r11

// Store
lea addresses_normal+0x62a5, %r13
nop
nop
cmp $46995, %rdi
movl $0x51525354, (%r13)
nop
add %r13, %r13

// Store
lea addresses_RW+0xf779, %rdi
nop
nop
nop
nop
dec %r11
movb $0x51, (%rdi)
nop
nop
nop
dec %rdx

// Store
mov $0x1b06810000000379, %r13
nop
nop
nop
add $43078, %rbx
movb $0x51, (%r13)
nop
add %r11, %r11

// Store
mov $0x6174f60000000e81, %rbx
nop
and $8244, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
add $62736, %r11

// Store
lea addresses_PSE+0x9159, %rbx
nop
nop
xor %r13, %r13
movl $0x51525354, (%rbx)
sub $22672, %rdi

// Store
mov $0x1f9, %r11
nop
nop
nop
nop
nop
xor $4292, %rdx
movb $0x51, (%r11)
nop
nop
nop
add %rdx, %rdx

// Faulty Load
mov $0x1b06810000000379, %r11
nop
nop
nop
nop
nop
xor %r13, %r13
movups (%r11), %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'08': 4, '3a': 1, '48': 778, 'a8': 1, 'c5': 1, 'ff': 6, '46': 3647, '00': 1070, '40': 3, '44': 16316, 'b5': 1, 'd1': 1}
00 46 44 44 44 00 46 44 46 44 48 44 44 46 44 44 44 44 44 48 00 44 46 48 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 46 44 44 44 46 44 46 46 44 44 44 44 46 46 00 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 46 44 46 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 48 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 46 46 44 44 44 44 46 44 44 44 44 44 44 46 44 46 44 44 44 44 44 46 46 44 46 00 44 44 44 44 00 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 00 44 44 46 48 48 00 44 44 44 44 44 44 44 46 44 46 44 44 46 44 44 44 44 44 44 44 44 00 44 44 46 48 46 00 44 44 48 44 44 46 44 46 44 44 46 44 46 44 46 44 44 44 44 44 44 46 44 44 48 44 46 46 44 44 44 46 44 44 44 48 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 48 48 44 44 44 44 44 44 00 44 44 44 44 46 44 44 44 44 44 44 44 44 00 46 46 44 00 44 44 44 44 44 44 44 44 48 44 46 44 44 46 44 44 44 44 48 44 46 44 44 44 44 44 46 46 44 48 44 44 46 44 44 44 44 44 44 44 44 44 44 48 44 46 46 44 44 44 46 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 46 44 44 44 44 44 44 44 48 48 44 44 44 46 44 44 00 44 48 44 44 44 00 48 44 44 44 44 46 44 44 44 44 44 44 44 48 44 44 44 46 46 46 44 44 44 44 44 46 44 44 44 44 44 44 00 44 44 00 44 44 44 44 46 48 48 44 44 44 00 44 44 00 44 44 44 44 44 48 44 44 46 00 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 46 44 44 44 46 46 44 46 44 44 48 44 46 46 44 46 46 46 44 44 44 44 44 44 00 44 44 44 44 44 44 44 46 46 44 44 44 44 46 00 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 48 44 44 44 44 44 00 44 44 44 44 44 46 44 46 44 44 44 44 46 44 44 44 46 44 00 44 46 44 44 44 44 46 44 44 46 00 44 44 44 44 44 44 44 46 46 44 44 46 44 46 44 46 46 44 44 44 44 44 44 44 46 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 48 44 44 44 46 46 44 44 44 00 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 00 44 44 44 46 44 44 44 44 44 00 44 44 46 00 48 44 44 44 44 44 44 46 44 44 46 44 44 00 46 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 46 00 00 44 44 44 44 46 46 00 44 46 44 44 44 46 46 46 46 44 44 44 44 46 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 00 44 44 46 44 44 44 46 44 44 44 44 46 44 44 46 44 46 44 44 44 44 44 46 44 46 00 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 46 44 44 44 44 46 44 44 46 44 44 44 46 44 44 46 44 44 44 46 46 44 00 46 44 44 44 48 44 44 46 44 46 44 44 44 44 44 44 44 46 44 44 44 44 48 00 44 44 44 44 44 44 46 44 00 44 44 44 46 44 44 44 46 44 48 46 44 44 44 46 44 44 44 44 44 44 46 46 44 44 46 44 44 46 46 44 44 00 44 46 44 44 44 44 44 46 46 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 00 44 44 48 44 44 44 44 44 46 46 44 44 46 44 44 44 00 44 44 44 46 44 46 44 44 44 44 46 44 44 44 44 44 44 46 48 46 44 46 00 44 44
*/
