.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7749, %r13
nop
nop
nop
nop
nop
add $3095, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x4582, %rcx
add $41968, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp $59907, %rcx
lea addresses_WC_ht+0x18b82, %rsi
lea addresses_WC_ht+0xeb82, %rdi
nop
nop
nop
and %rbp, %rbp
mov $22, %rcx
rep movsq
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x168c2, %rsi
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
xor $49083, %rcx
lea addresses_normal_ht+0xf182, %rcx
nop
nop
nop
nop
and $5899, %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
add %r11, %r11
lea addresses_WC_ht+0xf882, %rsi
lea addresses_UC_ht+0xe782, %rdi
inc %rbx
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
and $36818, %r11
lea addresses_UC_ht+0x75b7, %rbp
nop
nop
dec %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
nop
and $58309, %rbx
lea addresses_normal_ht+0x1ae82, %rsi
lea addresses_WC_ht+0x11183, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $23, %rcx
rep movsb
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x17eca, %rbp
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %rbp
vmovaps %ymm4, (%rbp)
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xa082, %rdi
nop
cmp $59178, %rbp
movw $0x6162, (%rdi)
nop
nop
nop
nop
and $18825, %rbp
lea addresses_A_ht+0x16902, %rbx
nop
nop
cmp $1597, %rbp
movl $0x61626364, (%rbx)
nop
xor $23583, %rbp
lea addresses_WC_ht+0x65e2, %rbp
nop
nop
nop
nop
nop
and $23361, %rbx
mov (%rbp), %cx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xf13a, %rsi
lea addresses_WC_ht+0x16882, %rdi
nop
nop
nop
add $57812, %r11
mov $48, %rcx
rep movsw
nop
nop
nop
nop
xor $299, %r13
lea addresses_A_ht+0x14fe2, %rbx
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x19b82, %rdi
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_WT+0x9b82, %r13
nop
nop
nop
nop
inc %rbp
movb (%r13), %r15b
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'39': 225}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
