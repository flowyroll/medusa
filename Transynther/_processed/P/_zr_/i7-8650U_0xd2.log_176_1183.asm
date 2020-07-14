.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13b80, %r15
nop
nop
dec %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0xb840, %rsi
lea addresses_UC_ht+0x2724, %rdi
clflush (%rsi)
xor %r12, %r12
mov $107, %rcx
rep movsw
cmp $40580, %r11
lea addresses_A_ht+0x11180, %r13
clflush (%r13)
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
and $40389, %r11
lea addresses_A_ht+0x12900, %rsi
xor %rdi, %rdi
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r15
cmp %r11, %r11
lea addresses_D_ht+0x3f00, %rcx
nop
lfence
mov (%rcx), %edi
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1c380, %rsi
lea addresses_WT_ht+0x16380, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $60, %rcx
rep movsb
sub $50707, %r12
lea addresses_UC_ht+0x9de0, %r11
nop
nop
nop
cmp %rdi, %rdi
mov (%r11), %r12d
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xe380, %rdi
nop
cmp %r13, %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x14c0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $17662, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rdi
movaps %xmm5, (%rdi)
nop
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0xbc20, %r11
nop
nop
nop
xor $41294, %rsi
movl $0x61626364, (%r11)
nop
and $5318, %r13
lea addresses_normal_ht+0xd380, %rdi
add $30406, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
xor $41713, %rsi
lea addresses_WT_ht+0xcb80, %rsi
lea addresses_WC_ht+0x17ac6, %rdi
nop
nop
nop
inc %r10
mov $17, %rcx
rep movsl
nop
nop
nop
xor $5385, %r13
lea addresses_A_ht+0xc160, %rsi
lea addresses_WC_ht+0xb780, %rdi
nop
nop
nop
nop
xor $34814, %r15
mov $29, %rcx
rep movsl
nop
nop
nop
sub $36081, %r13
lea addresses_A_ht+0x8b80, %r13
nop
nop
nop
nop
nop
add $12775, %rsi
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rax

// Faulty Load
mov $0xb80, %r11
inc %r12
mov (%r11), %eax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 176}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
