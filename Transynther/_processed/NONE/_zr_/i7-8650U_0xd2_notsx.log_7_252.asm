.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11b3a, %rsi
lea addresses_WT_ht+0x5f0e, %rdi
nop
add %r10, %r10
mov $18, %rcx
rep movsw
nop
xor %r11, %r11
lea addresses_WT_ht+0x428e, %r12
nop
inc %r9
mov (%r12), %r10w
nop
nop
xor $750, %rcx
lea addresses_WT_ht+0x35ae, %r11
nop
xor %r12, %r12
movb (%r11), %r9b
add %rcx, %rcx
lea addresses_WC_ht+0x8f0e, %rsi
lea addresses_WT_ht+0xeb92, %rdi
clflush (%rsi)
cmp %r8, %r8
mov $67, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $3582, %rdi
lea addresses_WC_ht+0xd50e, %r12
clflush (%r12)
cmp %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r12)
nop
nop
nop
cmp $59529, %r12
lea addresses_D_ht+0x1820a, %r10
cmp $42155, %rcx
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x99fe, %r11
nop
nop
sub %r12, %r12
mov (%r11), %esi
nop
sub %r9, %r9
lea addresses_A_ht+0x1c3da, %rdi
nop
nop
inc %rsi
movb $0x61, (%rdi)
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x1c16c, %rsi
nop
nop
nop
and %r12, %r12
movw $0x6162, (%rsi)
nop
inc %r8
lea addresses_WC_ht+0xe30e, %rcx
clflush (%rcx)
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%rcx)
sub $12029, %r10
lea addresses_UC_ht+0x8d0e, %r12
nop
and %rdi, %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
add $7687, %rsi
lea addresses_A_ht+0x14f0e, %rdi
cmp $6988, %rcx
mov (%rdi), %r8d
dec %r12
lea addresses_WT_ht+0x1e748, %rsi
lea addresses_WC_ht+0x1892e, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $99, %rcx
rep movsq
nop
nop
and $44818, %r10
lea addresses_WC_ht+0xbf0e, %rsi
lea addresses_A_ht+0x1a18e, %rdi
clflush (%rsi)
add %r11, %r11
mov $53, %rcx
rep movsw
nop
and $12764, %r11
lea addresses_D_ht+0x1b4ce, %rcx
nop
nop
nop
inc %rsi
mov (%rcx), %r8d
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdx

// Store
lea addresses_RW+0xe352, %r12
nop
add %r14, %r14
movl $0x51525354, (%r12)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_PSE+0xb385, %rcx
nop
cmp $39613, %rdx
movb $0x51, (%rcx)
nop
nop
sub $7522, %r14

// Load
lea addresses_PSE+0x370e, %r8
nop
nop
nop
nop
xor $64617, %r15
mov (%r8), %bx

// Exception!!!
nop
nop
mov (0), %rbx
nop
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0x2b0e, %rcx
nop
nop
nop
nop
sub $317, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
sub $60759, %rbx

// Store
lea addresses_normal+0xbb9e, %rbx
nop
sub %rdx, %rdx
movw $0x5152, (%rbx)

// Exception!!!
nop
nop
mov (0), %r12
xor %r15, %r15

// Faulty Load
lea addresses_A+0x1670e, %r12
nop
cmp %rcx, %rcx
mov (%r12), %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
