.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7a47, %rsi
lea addresses_normal_ht+0xdc7, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $33, %rcx
rep movsb
add %rdi, %rdi
lea addresses_WC_ht+0x15ba7, %r11
and %r10, %r10
mov (%r11), %di
nop
nop
nop
nop
nop
and $41023, %rbp
lea addresses_UC_ht+0x21c7, %r10
clflush (%r10)
nop
nop
cmp %r12, %r12
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0xd3af, %rsi
clflush (%rsi)
dec %rcx
mov (%rsi), %r10
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x15b47, %rdi
nop
nop
nop
add $46666, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
and $7689, %rbp
lea addresses_A_ht+0x145e7, %r11
nop
xor $61746, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
add $57488, %rsi
lea addresses_UC_ht+0x16b3, %rsi
lea addresses_UC_ht+0xd467, %rdi
sub %r11, %r11
mov $34, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0xbdcf, %rcx
clflush (%rcx)
nop
nop
nop
inc %r11
mov (%rcx), %r12w
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x1d1c7, %rcx
nop
nop
nop
sub $7888, %rdi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
dec %r12
lea addresses_UC_ht+0xb8c7, %rbp
clflush (%rbp)
add $29535, %r11
movl $0x61626364, (%rbp)
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0xc47, %rbp
sub $9463, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
nop
nop
inc %r12
lea addresses_WC_ht+0x580b, %rcx
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
dec %r12
lea addresses_UC_ht+0xc17d, %rsi
nop
nop
nop
and %rcx, %rcx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_UC+0x75c7, %r11
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r11)
nop
nop
add $64934, %rax

// Store
lea addresses_RW+0x18d05, %rax
nop
nop
nop
nop
nop
xor $50335, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
and %r10, %r10

// Store
mov $0xa1a100000000aaf, %r11
clflush (%r11)
add $33789, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
and $61612, %rbp

// Load
lea addresses_PSE+0x175c7, %rax
nop
nop
nop
nop
nop
sub $11275, %r12
mov (%rax), %r9
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_PSE+0x23ad, %rax
nop
nop
nop
nop
sub $11116, %rbx
movb $0x51, (%rax)

// Exception!!!
nop
nop
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
cmp $64800, %rax

// Store
lea addresses_WT+0x59c7, %r11
nop
and $10765, %rbp
movw $0x5152, (%r11)
inc %r10

// Faulty Load
lea addresses_US+0x51c7, %r11
nop
nop
nop
dec %rbp
movb (%r11), %r10b
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
