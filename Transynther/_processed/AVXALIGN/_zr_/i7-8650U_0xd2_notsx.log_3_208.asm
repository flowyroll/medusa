.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xa1d7, %rsi
lea addresses_WT_ht+0x10edd, %rdi
clflush (%rdi)
nop
xor %r9, %r9
mov $119, %rcx
rep movsb
add $40125, %rdi
lea addresses_normal_ht+0x999d, %rdi
nop
dec %r10
movl $0x61626364, (%rdi)
inc %r11
lea addresses_WT_ht+0x63d5, %rsi
nop
nop
nop
xor %r8, %r8
mov (%rsi), %r9d
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x945d, %r9
nop
nop
sub $55021, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
inc %r11
lea addresses_WC_ht+0x1e8dd, %rcx
nop
inc %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x142dd, %rdi
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rdi)
nop
and %r8, %r8
lea addresses_A_ht+0x102dd, %r11
nop
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
and %r9, %r9
lea addresses_UC_ht+0x14cdd, %rsi
lea addresses_WT_ht+0x129fd, %rdi
clflush (%rdi)
nop
nop
sub %r10, %r10
mov $63, %rcx
rep movsw
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x17b1d, %r9
nop
lfence
movb (%r9), %r10b
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1c8dd, %r10
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r10), %r9b
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xa15d, %rcx
nop
xor %r8, %r8
movb $0x61, (%rcx)
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x517d, %rcx
nop
xor $38834, %r10
mov (%rcx), %esi
add %r9, %r9
lea addresses_UC_ht+0x100dd, %r8
nop
and %r9, %r9
mov (%r8), %edi
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xc58f, %rsi
lea addresses_normal_ht+0x8edd, %rdi
nop
nop
add %r11, %r11
mov $17, %rcx
rep movsb
cmp %r8, %r8
lea addresses_normal_ht+0x3cdd, %rsi
lea addresses_D_ht+0x52cd, %rdi
clflush (%rsi)
cmp $515, %r13
mov $65, %rcx
rep movsl
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rsi

// Store
mov $0x59d, %rsi
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovntdq %ymm0, (%rsi)
xor $61247, %r13

// Store
lea addresses_RW+0xb4bd, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rbx)
sub $59416, %r14

// Load
lea addresses_US+0x1f2dd, %r14
cmp $38150, %r11
mov (%r14), %r9w
xor %r11, %r11

// Load
lea addresses_WT+0x1d8e5, %r14
cmp $51532, %r13
movb (%r14), %r9b
nop
xor $22266, %r9

// Load
lea addresses_normal+0x5a1d, %r13
nop
nop
nop
sub %rsi, %rsi
movb (%r13), %r12b
nop
nop
nop
nop
add %r9, %r9

// Store
mov $0x566d6d0000000cdd, %r14
dec %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r14)
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_A+0x88dd, %rbx
clflush (%rbx)
nop
nop
nop
xor %r9, %r9
vmovaps (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'00': 3}
00 00 00
*/
