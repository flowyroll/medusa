.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6894, %rsi
lea addresses_WT_ht+0xee04, %rdi
nop
nop
xor %r12, %r12
mov $17, %rcx
rep movsb
nop
nop
inc %rdx
lea addresses_D_ht+0x12846, %r15
nop
nop
nop
and %r9, %r9
movb $0x61, (%r15)
nop
and $26004, %rdi
lea addresses_D_ht+0x1914, %r9
clflush (%r9)
nop
nop
nop
nop
nop
mfence
mov (%r9), %r15w
nop
dec %rcx
lea addresses_D_ht+0x13714, %r12
nop
cmp %r9, %r9
mov (%r12), %edx
nop
nop
nop
nop
nop
sub $63441, %r9
lea addresses_WT_ht+0xfcd4, %rcx
xor $1159, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $39767, %rdi
lea addresses_WC_ht+0x1bc14, %r9
nop
cmp $44786, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x9a4c, %r12
nop
nop
xor %rdx, %rdx
movb (%r12), %cl
nop
nop
nop
nop
nop
sub $26056, %rcx
lea addresses_A_ht+0x1b194, %rdi
nop
add $29957, %r15
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x1b514, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x18914, %rcx
nop
inc %r12
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rdi

// Store
mov $0x314, %rbx
nop
nop
nop
sub $24289, %r13
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_D+0x18ca4, %rbx
nop
sub $37176, %r11
movb $0x51, (%rbx)
nop
nop
add $32591, %rbx

// Store
mov $0x544f180000000d14, %r11
inc %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0xa470, %r11
clflush (%r11)
cmp %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
xor %rbx, %rbx

// Store
lea addresses_US+0x3314, %r11
nop
nop
inc %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_WT+0x3314, %r13
nop
nop
nop
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%r13)
nop
nop
add $19047, %r13

// Faulty Load
lea addresses_A+0x16b14, %rdi
nop
cmp $50577, %r12
mov (%rdi), %r13d
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 79}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
