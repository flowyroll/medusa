.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x486c, %r15
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x1146c, %r8
clflush (%r8)
nop
nop
nop
cmp %r9, %r9
movl $0x61626364, (%r8)
xor %r13, %r13
lea addresses_A_ht+0x126c, %r9
clflush (%r9)
nop
and %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm6
and $0xffffffffffffffc0, %r9
movaps %xmm6, (%r9)
and %rbx, %rbx
lea addresses_WT_ht+0x18f6c, %rsi
lea addresses_normal_ht+0x806c, %rdi
nop
nop
nop
sub %r13, %r13
mov $108, %rcx
rep movsq
nop
and $50761, %rax
lea addresses_WC_ht+0x10f6c, %rsi
nop
nop
nop
nop
nop
xor $23618, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x1db84, %r12
clflush (%r12)
xor $1728, %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x1086c, %rdi
nop
dec %r13
mov (%rdi), %r15w
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1a06c, %rdi
sub $25294, %r15
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0xdd2c, %rsi
lea addresses_WC_ht+0x1e16c, %rdi
nop
xor %r13, %r13
mov $26, %rcx
rep movsb
nop
nop
and $3294, %rsi
lea addresses_WT_ht+0x1cfd4, %rsi
lea addresses_UC_ht+0x1766c, %rdi
clflush (%rsi)
nop
nop
sub $63937, %rax
mov $100, %rcx
rep movsl
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x6294, %rsi
lea addresses_A_ht+0x31b6, %rdi
nop
nop
add %r8, %r8
mov $23, %rcx
rep movsl
cmp $33396, %rax
lea addresses_D_ht+0x14a6c, %rax
nop
and $63894, %rdi
movb (%rax), %r13b
nop
inc %r15
lea addresses_D_ht+0x37ac, %rax
nop
add %r15, %r15
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rbx
dec %r9
lea addresses_WC_ht+0x18d4c, %rsi
nop
nop
add $28491, %r15
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
nop
add $55718, %r9
lea addresses_WC_ht+0xe66c, %r8
nop
nop
sub $18592, %r9
mov (%r8), %ax
nop
nop
nop
nop
xor $54220, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_WC+0x1c06c, %rax
clflush (%rax)
xor $53422, %r12
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
xor $30984, %r12

// Store
lea addresses_WC+0xc82d, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp $7388, %r8
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
dec %r11

// Store
lea addresses_A+0x1546c, %r8
clflush (%r8)
nop
dec %r12
movl $0x51525354, (%r8)
nop
nop
and $46347, %r12

// Store
lea addresses_A+0x517c, %rax
sub $31321, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovntdq %ymm4, (%rax)
nop
nop
sub %r11, %r11

// Store
mov $0x20ce8d000000076a, %rcx
nop
nop
nop
nop
cmp %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_WC+0x1c06c, %r11
nop
nop
xor $42272, %r12
vmovaps (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 137}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
