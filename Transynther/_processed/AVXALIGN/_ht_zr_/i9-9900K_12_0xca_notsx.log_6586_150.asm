.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8200, %r12
clflush (%r12)
nop
nop
sub $34044, %r11
mov (%r12), %di
nop
add %rbp, %rbp
lea addresses_UC_ht+0x139b, %rsi
lea addresses_A_ht+0x10beb, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $38, %rcx
rep movsl
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x4f6b, %rbp
nop
nop
nop
nop
dec %rsi
mov (%rbp), %di
nop
nop
and $65412, %r8
lea addresses_WC_ht+0x7eb, %rsi
lea addresses_WC_ht+0x179ae, %rdi
nop
nop
xor %r12, %r12
mov $35, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_UC_ht+0x1cfeb, %rsi
nop
cmp %rcx, %rcx
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
sub $43008, %r12
lea addresses_D_ht+0xafeb, %rbp
nop
nop
cmp %rdi, %rdi
mov (%rbp), %r12w
xor $61491, %rsi
lea addresses_WT_ht+0x1d5ef, %rsi
lea addresses_UC_ht+0x1b76b, %rdi
nop
nop
nop
dec %r8
mov $95, %rcx
rep movsl
nop
cmp %r11, %r11
lea addresses_normal_ht+0x2e8b, %rdi
nop
nop
dec %r8
mov (%rdi), %esi
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x1bae7, %rsi
sub %r8, %r8
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r12
inc %rbp
lea addresses_normal_ht+0xa82b, %rsi
lea addresses_UC_ht+0x99eb, %rdi
nop
nop
sub $4521, %rbp
mov $47, %rcx
rep movsq
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0xb5eb, %rcx
nop
nop
nop
nop
xor %r8, %r8
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Load
mov $0x671f190000000063, %rax
and %rbp, %rbp
mov (%rax), %r14w
nop
sub %r13, %r13

// Faulty Load
lea addresses_WT+0x18feb, %rsi
sub $7963, %rbx
vmovaps (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'49': 4724, '46': 394, '48': 1092, '44': 107, '00': 269}
48 49 49 48 49 49 49 49 49 49 49 46 49 49 49 49 48 48 49 49 48 49 49 48 49 48 49 49 49 49 49 49 49 49 48 49 49 00 48 00 00 49 49 49 49 49 49 49 49 49 49 48 48 48 49 49 49 49 48 49 49 49 48 49 49 46 00 44 49 48 49 49 00 46 48 49 48 49 46 49 49 49 49 46 49 49 49 49 48 49 49 49 49 48 46 49 49 48 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 48 49 49 49 00 49 49 49 49 49 48 48 49 49 49 49 49 49 49 49 49 48 49 49 49 48 48 49 49 49 49 49 44 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 48 49 49 49 48 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 00 48 49 49 49 49 49 49 48 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 00 49 49 46 49 49 48 46 49 49 49 49 49 49 49 49 49 49 49 46 44 49 49 49 49 49 49 49 49 49 49 00 00 49 46 48 49 49 49 49 49 49 49 49 48 49 49 49 48 49 49 00 00 49 49 00 48 49 46 46 49 49 49 49 49 49 49 49 46 49 49 49 49 48 49 49 49 49 48 48 44 49 48 49 48 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 48 46 49 49 49 44 49 49 46 44 49 00 49 49 48 49 49 48 48 48 49 49 49 48 49 48 49 49 49 49 46 49 49 48 49 49 49 49 49 49 49 48 46 48 49 49 48 44 49 49 49 49 49 49 48 49 46 49 49 49 48 49 46 49 49 49 48 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 48 00 46 49 48 49 49 49 44 48 00 46 49 49 00 49 49 49 49 49 48 49 49 49 49 49 49 00 49 49 48 49 49 49 49 49 48 49 48 49 49 46 49 49 48 49 48 49 48 49 49 49 49 46 48 49 48 49 49 48 49 49 49 49 49 48 49 49 49 00 48 49 49 46 49 49 49 49 49 48 49 49 49 49 49 49 49 49 44 49 49 48 49 49 49 49 49 44 49 48 49 49 49 48 49 49 49 49 49 49 49 49 49 48 49 46 48 48 00 49 49 44 49 49 49 49 49 49 49 46 49 49 49 49 49 48 48 49 49 49 49 46 49 46 49 48 48 48 48 49 49 49 49 48 49 49 49 46 49 46 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 00 49 48 49 49 49 46 49 48 49 49 49 49 49 48 48 49 00 49 48 00 49 49 49 49 49 48 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 44 49 49 46 49 49 49 49 48 49 49 49 49 49 48 48 49 48 49 46 49 48 48 49 48 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 48 49 49 48 48 49 49 48 49 49 48 49 48 00 49 49 46 49 49 48 48 49 49 48 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 48 49 46 49 49 49 49 49 49 49 48 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 46 49 46 49 49 49 49 49 49 49 49 49 49 00 48 48 49 49 46 48 49 48 49 49 49 46 49 46 49 49 46 49 49 49 49 49 49 46 48 48 00 49 49 46 44 48 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 48 48 49 49 49 48 49 48 49 49 49 48 49 48 49 49 49 49 49 49 49 48 49 49 49 46 48 49 46 48 49 49 49 49 49 49 49 48 49 48 49 48 46 49 49 49 49 46 48 49 48 49 49 49 48 48 49 49 00 49 49 49 49 49 49 49 48 49 49 49 48 49 46 48 48 46 49 49 49 49 49 49 49 49 49 48 46 49 46 49 49 49 48 49 49 49 49 49 48 49 49 48 49 49 49 49 44 49 49 49 49 49 49 46 49 49 48 49 46 49 49 00 49 49 48 49 49 48 49 49 48 00 49 49 49 48 49 49 49 00 49 49 49 49 49 46 49 49 49 49 49 46 49 00 49 49 46 49 49 48 48 00 49 49 48 49 49 49 49 48 49 49 49 49
*/
