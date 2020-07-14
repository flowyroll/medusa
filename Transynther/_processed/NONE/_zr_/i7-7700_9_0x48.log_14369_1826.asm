.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1c6e7, %rdi
nop
sub $39388, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0xfde7, %r9
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %r15
movq %r15, (%r9)
nop
inc %r9
lea addresses_WT_ht+0x1c9b7, %rsi
lea addresses_WC_ht+0x1d21b, %rdi
xor %rax, %rax
mov $89, %rcx
rep movsw
nop
nop
add $37845, %rdi
lea addresses_A_ht+0xd6cf, %rdi
nop
nop
cmp $2455, %rsi
mov (%rdi), %r9
nop
nop
inc %r9
lea addresses_WC_ht+0x31a7, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xa4c7, %rsi
lea addresses_WC_ht+0xf027, %rdi
nop
nop
mfence
mov $32, %rcx
rep movsb
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x110a7, %rsi
lea addresses_D_ht+0x166e7, %rdi
and %rax, %rax
mov $15, %rcx
rep movsb
nop
nop
nop
nop
and $25466, %rsi
lea addresses_WT_ht+0x16067, %rsi
lea addresses_D_ht+0x14be7, %rdi
nop
cmp %rbx, %rbx
mov $29, %rcx
rep movsw
and $54427, %rcx
lea addresses_D_ht+0x1ab67, %rbx
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %rbx
movaps %xmm6, (%rbx)
nop
xor %rax, %rax
lea addresses_WC_ht+0x1487, %r8
nop
nop
nop
cmp $42541, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x33e7, %rsi
lea addresses_WC_ht+0x15567, %rdi
nop
nop
nop
nop
and $38365, %r9
mov $114, %rcx
rep movsb
nop
nop
nop
xor $25890, %r9
lea addresses_UC_ht+0x15c7, %rbx
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rbx
movaps %xmm6, (%rbx)
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1c965, %rsi
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rsi)
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0xb588, %rcx
cmp $10050, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
inc %r15

// Store
lea addresses_UC+0x1cfb1, %r11
nop
nop
nop
nop
nop
cmp $52138, %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_RW+0xc667, %r9
nop
nop
nop
nop
nop
add %r8, %r8
movw $0x5152, (%r9)
nop
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_RW+0x1d5e7, %rsi
nop
nop
dec %r11
mov (%rsi), %rcx
nop
nop
nop
and $35275, %r11

// Load
lea addresses_PSE+0x61e7, %rcx
inc %rax
mov (%rcx), %r11w
nop
nop
nop
sub $57030, %rax

// Load
lea addresses_UC+0x131e7, %r8
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%r8), %r15d

// Exception!!!
nop
nop
nop
mov (0), %r8
cmp %rsi, %rsi

// Faulty Load
lea addresses_UC+0x115e7, %r15
nop
nop
nop
nop
and %rsi, %rsi
movb (%r15), %r9b
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'00': 14369}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
