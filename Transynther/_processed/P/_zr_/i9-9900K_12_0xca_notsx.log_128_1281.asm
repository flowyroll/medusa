.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xdcbf, %rsi
lea addresses_A_ht+0x3bef, %rdi
clflush (%rdi)
nop
nop
add %r9, %r9
mov $50, %rcx
rep movsl
nop
inc %rbp
lea addresses_WC_ht+0x1a49f, %rsi
lea addresses_D_ht+0x291b, %rdi
sub %r13, %r13
mov $10, %rcx
rep movsl
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x30ff, %rcx
nop
nop
nop
nop
add $8726, %rdi
mov (%rcx), %r9d
nop
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x1c0ff, %rsi
lea addresses_D_ht+0x1c0ff, %rdi
nop
nop
cmp %r10, %r10
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $43637, %rbp
lea addresses_UC_ht+0xa0ff, %rcx
add $26841, %rbp
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x8cbf, %rsi
lea addresses_WC_ht+0x1d07f, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $13, %rcx
rep movsw
cmp %rdi, %rdi
lea addresses_A_ht+0x1acef, %rsi
lea addresses_normal_ht+0x529f, %rdi
nop
nop
sub $54903, %rbp
mov $18, %rcx
rep movsq
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1b0ff, %r9
clflush (%r9)
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x53f, %rsi
and %rdi, %rdi
movl $0x51525354, (%rsi)
sub %rsi, %rsi

// Faulty Load
mov $0x8ff, %r11
nop
nop
nop
nop
nop
and $31340, %r12
movups (%r11), %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'00': 128}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
