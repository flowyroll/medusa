.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ecc0, %rcx
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
add $39820, %r9
lea addresses_D_ht+0xfd4, %rsi
lea addresses_normal_ht+0x2bc1, %rdi
nop
nop
nop
nop
inc %rax
mov $57, %rcx
rep movsb
nop
nop
nop
nop
add $44336, %rcx
lea addresses_WT_ht+0x163c0, %rsi
lea addresses_normal_ht+0x1bf05, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $38593, %r11
mov $95, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xfb40, %rcx
nop
nop
nop
sub $24363, %r14
mov (%rcx), %si
nop
and %r9, %r9
lea addresses_A_ht+0x13400, %rdi
nop
nop
nop
and $26395, %r14
mov (%rdi), %r11w
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xcfc0, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x6098, %rsi
lea addresses_UC_ht+0x32a4, %rdi
nop
nop
cmp $12225, %r15
mov $26, %rcx
rep movsw
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1a9e4, %rdi
nop
nop
cmp $23338, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
cmp $51919, %rdi
lea addresses_D_ht+0xbfd2, %rsi
nop
nop
nop
dec %r15
movw $0x6162, (%rsi)
nop
and %r11, %r11
lea addresses_A_ht+0x11320, %r15
nop
cmp $7243, %rdi
movb (%r15), %cl
inc %r11
lea addresses_UC_ht+0xadf0, %rsi
lea addresses_normal_ht+0x10a, %rdi
nop
nop
nop
nop
nop
and $31269, %r11
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x10dc0, %rsi
lea addresses_D_ht+0x16fc0, %rdi
nop
nop
nop
nop
cmp $11939, %rax
mov $119, %rcx
rep movsw
nop
nop
sub $44454, %rdi
lea addresses_WT_ht+0xbf40, %r11
nop
xor %rdi, %rdi
mov (%r11), %esi
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbx
push %rdx
push %rsi

// Faulty Load
lea addresses_UC+0x127c0, %r9
nop
nop
lfence
mov (%r9), %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'37': 311}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
