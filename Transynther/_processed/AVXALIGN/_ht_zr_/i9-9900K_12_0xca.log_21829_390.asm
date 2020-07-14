.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14258, %rbx
nop
nop
add %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
cmp $54496, %rsi
lea addresses_UC_ht+0x14350, %rbx
cmp $15147, %r13
mov (%rbx), %r11
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x18858, %rsi
lea addresses_D_ht+0x14b58, %rdi
nop
nop
cmp $60349, %r13
mov $81, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1df58, %rbx
clflush (%rbx)
nop
nop
nop
sub $34791, %r13
movb (%rbx), %r11b
nop
nop
nop
nop
nop
xor $50224, %r11
lea addresses_WT_ht+0x7486, %rcx
nop
nop
nop
nop
and $12355, %r9
mov (%rcx), %r11d
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xe2d8, %rbx
nop
nop
nop
nop
nop
xor $23600, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xde58, %rsi
lea addresses_WC_ht+0x5cad, %rdi
cmp $57550, %rdx
mov $103, %rcx
rep movsl
xor $57939, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rax
push %rsi

// Load
lea addresses_normal+0x1fd58, %rsi
nop
nop
nop
nop
and $37040, %r10
movb (%rsi), %r12b
nop
nop
nop
nop
add %rax, %rax

// Store
mov $0xeb8, %r12
nop
nop
cmp $30233, %rsi
movl $0x51525354, (%r12)
nop
nop
nop
nop
and $30360, %r15

// Store
lea addresses_WT+0x4278, %rax
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%rax)
add %r10, %r10

// Store
lea addresses_UC+0x1a948, %rsi
clflush (%rsi)
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rsi)
nop
nop
add %r13, %r13

// Store
lea addresses_WT+0x4ff8, %r12
nop
cmp $7690, %rax
movw $0x5152, (%r12)
nop
nop
add $48126, %r11

// Store
lea addresses_normal+0x172fe, %r15
nop
nop
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_UC+0x8358, %r15
nop
nop
nop
nop
nop
sub %r10, %r10
vmovntdqa (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': True, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'49': 9942, '00': 2, '46': 11885}
00 46 49 46 49 49 49 49 49 46 46 46 49 46 49 49 46 46 49 49 49 49 49 49 46 46 46 46 49 46 46 46 49 46 46 46 49 49 49 49 49 49 49 49 49 46 49 46 46 46 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 46 46 49 46 49 49 49 46 49 49 46 46 49 49 49 49 49 49 49 46 49 49 46 46 46 46 46 46 49 49 49 46 46 46 49 46 49 46 49 49 49 49 49 49 46 46 46 46 49 46 49 49 49 46 46 46 49 49 49 49 46 46 49 49 46 46 49 49 46 46 49 46 49 49 46 46 49 49 46 46 46 46 46 49 46 46 46 49 46 46 46 49 49 49 49 46 46 49 46 46 46 49 49 49 49 49 46 46 46 49 46 46 46 49 46 49 49 49 49 49 49 49 49 46 46 49 49 46 46 49 46 49 49 49 49 49 49 46 46 46 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 46 49 46 49 46 46 46 49 49 49 49 46 46 46 46 46 46 49 46 46 46 46 49 49 46 46 49 46 46 46 46 46 49 49 49 46 49 49 49 46 49 46 49 49 46 46 49 49 49 49 46 46 49 46 46 46 49 49 49 46 49 46 46 46 46 46 46 46 49 49 49 49 46 46 49 46 49 49 49 46 46 46 49 49 46 46 49 49 49 46 49 46 46 46 46 46 49 46 46 46 49 46 46 46 49 46 49 46 46 46 46 46 49 46 46 46 46 46 46 49 46 49 49 46 46 49 49 46 46 46 46 46 46 46 46 46 46 46 49 46 49 49 49 46 49 49 49 49 46 46 49 46 49 49 46 46 49 49 49 49 49 49 46 46 46 46 49 49 49 49 49 46 49 49 49 46 49 46 49 46 46 46 49 49 46 46 49 49 49 46 46 46 49 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 49 49 49 49 49 49 49 49 49 46 46 49 49 46 46 49 49 49 49 46 46 49 49 49 49 46 46 49 49 49 46 46 46 49 49 49 46 46 46 49 46 46 46 46 46 49 49 49 46 49 46 49 49 49 49 49 46 49 49 49 49 49 49 46 46 46 46 46 46 49 49 49 49 49 46 46 46 49 46 46 46 49 49 49 49 49 46 46 49 46 46 46 49 49 49 49 46 46 46 46 46 46 49 46 46 46 49 49 46 46 49 49 49 49 49 49 49 49 49 46 46 46 46 46 49 46 46 46 49 49 49 49 46 46 49 46 46 46 49 46 46 46 49 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 49 49 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 49 49 46 49 49 49 46 46 46 46 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 46 46 49 46 46 46 49 46 46 46 49 46 46 46 46 46 49 46 46 46 49 46 46 46 49 46 46 46 49 46 46 46 49 46 49 49 49 46 46 46 49 49 49 49 46 46 49 46 46 46 49 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 49 46 46 49 46 46 46 49 46 49 49 49 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 49 49 49 49 49 49 49 49 46 46 46 46 46 46 49 46 49 49 46 46 46 46 49 46 49 46 46 46 46 46 49 46 49 46 46 46 49 49 46 46 46 46 49 49 49 46 49 49 49 49 49 49 49 46 46 46 46 46 46 46 46 46 46 49 49 49 49 46 46 49 49 49 49 49 46 46 46 49 49 49 49 49 46 46 46 49 46 46 46 49 46 49 49 46 46 46 46 46 46 49 49 49 49 49 49 49 49 49 49 46 46 46 46 46 46 46 46 49 49 49 49 46 46 49 49 49 49 49 46 49 49 46 46 49 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 49 46 46 49 46 46 46 49 49 49 49 49 49 49 49 49 46 46 46 46 46 49 49 49 49 46 46 49 49 49 49 46 46 49 49 49 49 49 46 46 46 49 49 49 49 49 46 46 46 49 46 46 46 46 46 49 49 46 46 46 46 49 49 49 49 49 46 46 46 46 46 49 46 46 46 49 49 46 46 49 49 49 49 49 49 49 46 46 46 46 49 46 49 46 46
*/
