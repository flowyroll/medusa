.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8d33, %rdi
nop
nop
nop
dec %r13
movb $0x61, (%rdi)
nop
nop
add $32449, %rax
lea addresses_normal_ht+0xde03, %rsi
lea addresses_normal_ht+0xfc4b, %rdi
nop
nop
sub $62944, %r14
mov $111, %rcx
rep movsb
nop
nop
nop
nop
and $11697, %rdi
lea addresses_WT_ht+0x1af4b, %rdi
nop
nop
nop
nop
nop
xor $29423, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x4b4b, %rsi
nop
sub %r13, %r13
movb $0x61, (%rsi)
and %r12, %r12
lea addresses_D_ht+0xb24b, %rsi
lea addresses_WC_ht+0xe7eb, %rdi
sub %r12, %r12
mov $75, %rcx
rep movsl
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x1a021, %rcx
nop
nop
add %rsi, %rsi
movw $0x6162, (%rcx)
nop
inc %rcx
lea addresses_WC_ht+0xbdcb, %rsi
lea addresses_UC_ht+0x12d49, %rdi
clflush (%rsi)
clflush (%rdi)
inc %rdx
mov $58, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_D_ht+0x10ff7, %r12
nop
nop
and %r13, %r13
movb $0x61, (%r12)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x17ca7, %rax
nop
xor $7284, %rdx
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x139cb, %rax
dec %r14
movb $0x51, (%rax)
nop
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WT+0xaa4b, %rsi
nop
nop
nop
nop
nop
sub %r11, %r11
vmovntdqa (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'46': 7085, '48': 246, '49': 2717, '00': 11674, '44': 106, '30': 1}
00 00 00 49 49 49 00 00 46 46 00 00 00 46 46 46 00 46 00 46 00 00 46 46 00 00 00 00 00 46 46 49 49 00 46 46 00 00 00 00 46 00 46 00 46 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 46 49 49 49 00 46 00 00 46 46 46 46 00 00 00 44 00 00 00 46 00 48 46 00 00 46 00 00 00 46 00 46 46 00 00 00 49 00 46 00 46 46 46 00 00 49 49 00 00 46 46 00 00 46 46 00 00 46 00 00 00 46 46 46 00 49 00 46 46 00 46 49 00 00 00 00 00 44 46 46 46 46 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 46 00 00 46 00 46 46 00 00 46 00 46 44 46 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 46 46 00 48 00 00 00 46 00 46 00 00 00 00 46 00 46 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 44 46 00 00 00 46 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 46 00 46 00 00 46 00 46 46 00 46 00 00 49 49 49 49 49 49 46 00 46 46 00 00 00 00 00 00 00 46 00 46 00 46 00 49 00 00 00 00 00 00 46 46 46 48 00 00 46 46 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 00 46 00 46 46 00 46 00 46 46 46 46 46 00 00 00 46 00 46 00 00 00 46 00 46 00 49 49 00 00 46 46 46 49 49 49 49 49 49 49 49 49 49 49 00 00 46 00 00 46 00 00 00 00 49 46 46 00 00 00 46 00 00 46 46 00 46 00 00 46 00 46 46 46 46 46 46 00 00 00 46 46 46 00 46 00 46 46 46 46 46 46 00 46 00 49 49 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 48 46 46 46 00 00 46 46 49 49 49 00 00 00 00 00 46 46 00 46 00 00 46 46 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 46 00 46 46 00 46 46 46 46 00 00 00 00 00 46 46 00 00 46 00 46 00 46 00 46 00 00 00 00 00 00 00 46 46 00 46 46 46 00 00 46 00 00 00 46 46 00 00 00 46 00 46 00 46 00 46 00 00 00 46 00 00 46 00 46 46 00 00 00 46 00 00 49 49 00 00 00 00 46 00 00 46 00 46 00 00 46 00 46 46 00 00 46 00 00 00 46 46 00 00 00 46 00 00 46 00 46 00 49 49 49 49 49 00 00 00 46 46 46 00 00 46 00 46 46 00 46 00 00 00 46 00 46 00 46 46 00 00 44 00 00 00 00 00 00 49 00 46 46 46 00 00 00 00 00 46 46 00 00 46 46 46 00 00 00 00 00 46 00 48 00 00 46 00 00 46 00 46 00 00 46 49 49 49 00 46 46 46 00 46 00 00 00 46 00 00 00 46 00 00 46 46 00 00 49 49 49 49 49 00 46 46 46 46 00 46 46 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 49 49 49 49 49 00 46 46 00 46 00 46 49 49 49 00 46 00 00 00 46 00 46 49 49 00 00 00 46 00 49 49 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 46 46 00 46 46 00 48 00 00 00 00 46 46 00 46 00 46 00 46 46 48 48 00 00 46 46 49 49 00 00 00 00 00 48 00 00 00 00 49 00 00 00 46 00 46 49 49 00 46 46 00 00 00 46 00 46 00 00 46 00 49 49 49 49 49 49 49 49 49 00 00 00 46 46 46 00 00 46 00 00 46 46 46 00 00 00 00 00 00 00 46 00 00 00 00 46 46 46 46 46 00 46 46 46 46 00 00 00 46 00 00 46 00 46 00 00 46 00 00 46 46 00 00 00 00 46 00 00 46 00 46 00 00 00 46 00 46 00 00 46 00 00 00 46 46 00 46 00 46 46 00 46 46 46 46 00 00 46 00 46 46 46 49 49 00 46 46 46 00 00 00 00 00 46 46 00 46 46 46 00 00 00 46 46 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00
*/
