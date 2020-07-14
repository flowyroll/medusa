.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ac14, %r15
nop
nop
nop
xor $64438, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xd94, %r11
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r11), %r13w
nop
add %r15, %r15
lea addresses_UC_ht+0xedc4, %r14
nop
nop
nop
cmp %r15, %r15
mov (%r14), %r11d
sub $7483, %r8
lea addresses_UC_ht+0x5244, %rsi
lea addresses_WC_ht+0xdd94, %rdi
nop
dec %r8
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $64017, %rcx
lea addresses_WT_ht+0x1542c, %rdi
nop
nop
mfence
mov (%rdi), %rcx
nop
nop
nop
nop
add $49982, %rcx
lea addresses_WT_ht+0x1b994, %r14
nop
nop
nop
nop
cmp $64449, %r8
movl $0x61626364, (%r14)
nop
nop
and $22854, %r14
lea addresses_D_ht+0xc594, %r14
nop
cmp $47803, %rax
mov (%r14), %r8
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x12a14, %r11
nop
nop
nop
mfence
vmovups (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x19994, %rsi
lea addresses_normal_ht+0x8194, %rdi
clflush (%rdi)
nop
nop
cmp %r14, %r14
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x3594, %rax
xor $53412, %rdi
movb $0x61, (%rax)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x2a14, %r13
nop
dec %r11
movw $0x6162, (%r13)
nop
nop
dec %rax
lea addresses_UC_ht+0x8b86, %r8
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %r8
vmovaps %ymm1, (%r8)
nop
nop
sub $10212, %r8
lea addresses_WT_ht+0xaabc, %rdi
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rdi)
inc %r15
lea addresses_WC_ht+0x1af88, %r8
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r8)
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x19994, %rsi
lea addresses_normal+0x84c8, %rdi
nop
nop
xor $61278, %r13
mov $72, %rcx
rep movsb
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_A+0x9594, %rsi
nop
nop
nop
inc %rcx
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'00': 5}
00 00 00 00 00
*/
