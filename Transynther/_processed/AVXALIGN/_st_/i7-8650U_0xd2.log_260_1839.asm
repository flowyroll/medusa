.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x993d, %rsi
lea addresses_D_ht+0x1de8b, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $119, %rcx
rep movsb
nop
cmp $28339, %rax
lea addresses_D_ht+0x1ab2d, %r11
nop
xor %r15, %r15
mov (%r11), %ecx
nop
nop
nop
nop
nop
add $43435, %rax
lea addresses_WT_ht+0x5d6d, %r11
cmp $41068, %rax
mov $0x6162636465666768, %r15
movq %r15, (%r11)
nop
nop
nop
nop
nop
and $24797, %r15
lea addresses_A_ht+0xb805, %rcx
cmp $38499, %r11
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm0
vpextrq $0, %xmm0, %r15
inc %r15
lea addresses_WT_ht+0x1be2d, %r11
clflush (%r11)
nop
nop
inc %rcx
mov $0x6162636465666768, %r15
movq %r15, (%r11)
cmp %r11, %r11
lea addresses_UC_ht+0x12edd, %r15
nop
nop
nop
and $56835, %r10
movb $0x61, (%r15)
nop
nop
nop
cmp $25716, %rcx
lea addresses_A_ht+0x1b16d, %rsi
lea addresses_WC_ht+0x1e16d, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $117, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x96c3, %rdi
nop
nop
nop
nop
nop
xor $63699, %rcx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
add %r10, %r10
lea addresses_WT_ht+0x19a2d, %rsi
nop
nop
nop
nop
and $15169, %rax
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_normal+0x12f6d, %r12
nop
sub %rbx, %rbx
movb (%r12), %al
nop
sub $57020, %r11

// Store
lea addresses_US+0x13b6d, %rbx
and %rax, %rax
movb $0x51, (%rbx)
nop
nop
inc %r11

// Faulty Load
lea addresses_UC+0x6b6d, %rax
and %rsi, %rsi
movb (%rax), %r12b
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'51': 260}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
