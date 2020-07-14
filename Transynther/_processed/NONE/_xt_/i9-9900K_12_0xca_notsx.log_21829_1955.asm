.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11de1, %rcx
clflush (%rcx)
nop
nop
nop
and $9193, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rcx)
add %r8, %r8
lea addresses_UC_ht+0x151e1, %r8
mfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
and $50673, %rcx
lea addresses_A_ht+0x4c93, %rsi
lea addresses_WT_ht+0xdde1, %rdi
nop
nop
nop
nop
sub $12229, %r13
mov $26, %rcx
rep movsl
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xeb61, %rdi
nop
dec %r13
mov (%rdi), %r15w
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x7ee1, %rcx
nop
nop
nop
nop
nop
inc %r15
movb (%rcx), %r8b
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x177a1, %rsi
lea addresses_UC_ht+0x1b521, %rdi
clflush (%rsi)
nop
nop
nop
xor $21806, %r12
mov $25, %rcx
rep movsw
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0xf021, %rsi
nop
nop
nop
nop
nop
and $13887, %r15
mov (%rsi), %r13
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x25e1, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rdi)
inc %r9
lea addresses_WT_ht+0x1229, %r8
nop
xor $64486, %rcx
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x101e1, %rsi
lea addresses_WT_ht+0x3a01, %rdi
nop
nop
and $56397, %r9
mov $33, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x131e1, %rdi
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rdx

// Faulty Load
lea addresses_normal+0x1d1e1, %r13
nop
nop
nop
nop
nop
xor %rbp, %rbp
movb (%r13), %r11b
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
