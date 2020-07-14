.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x165f, %r9
nop
nop
nop
sub $33876, %r14
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
inc %r14
lea addresses_D_ht+0x3bdf, %rsi
lea addresses_WC_ht+0x1c9df, %rdi
nop
sub %r9, %r9
mov $26, %rcx
rep movsl
nop
nop
dec %rdi
lea addresses_UC_ht+0x1999f, %rsi
lea addresses_WC_ht+0x1be8b, %rdi
nop
nop
nop
nop
dec %r14
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0xabdf, %rsi
lea addresses_D_ht+0x4adf, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $14, %rcx
rep movsb
nop
dec %rdi
lea addresses_D_ht+0xc423, %r14
nop
nop
cmp %r9, %r9
mov (%r14), %edi
nop
inc %r14
lea addresses_D_ht+0x176af, %rsi
lea addresses_normal_ht+0x54df, %rdi
nop
inc %r9
mov $75, %rcx
rep movsl
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Load
mov $0x719a940000000bdf, %rbp
nop
nop
nop
inc %r11
movntdqa (%rbp), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_UC+0xb3df, %rbx
nop
nop
nop
inc %rax
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r11
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x1981f, %rbp
dec %rsi
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x4366, %rsi
nop
nop
nop
nop
sub $53135, %rcx
movw $0x5152, (%rsi)
and %rsi, %rsi

// Store
lea addresses_normal+0x1eeff, %rbx
nop
and $15363, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
dec %rsi

// Faulty Load
mov $0x719a940000000bdf, %rsi
nop
nop
nop
nop
sub %r8, %r8
movb (%rsi), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
