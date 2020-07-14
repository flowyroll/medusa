.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xeea3, %r13
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r13), %ebx
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x15f9b, %r11
nop
nop
cmp %rdi, %rdi
movb (%r11), %r10b
nop
nop
add %r13, %r13
lea addresses_UC_ht+0xc503, %r11
clflush (%r11)
nop
nop
nop
nop
cmp $19466, %r13
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x14ced, %rsi
nop
nop
nop
xor $63225, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x150c3, %rsi
cmp $5141, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
inc %r11
lea addresses_D_ht+0x18f53, %r13
nop
nop
and $11663, %rdi
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
cmp $16190, %r13
lea addresses_D_ht+0x11cfb, %r11
nop
nop
nop
nop
and $20734, %rsi
mov (%r11), %dx
nop
nop
nop
sub $39814, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r13
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
push %rdi
push %rsi

// Load
lea addresses_US+0x11453, %r11
nop
nop
nop
nop
nop
dec %rsi
movb (%r11), %r9b
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0x106a3, %r12
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r12)
nop
nop
sub %rsi, %rsi

// Load
mov $0x73, %rax
nop
and $5112, %rsi
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
nop
inc %rsi

// Store
mov $0xaa3, %r12
nop
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r12)
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_D+0xc483, %r11
nop
nop
nop
nop
sub $57985, %r12
movl $0x51525354, (%r11)
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x106a3, %r11
nop
nop
nop
nop
cmp %r12, %r12
vmovaps (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 6}
00 00 00 00 00 00
*/
