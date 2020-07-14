.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12983, %r15
nop
nop
nop
nop
and $923, %rsi
movb (%r15), %r13b
nop
nop
nop
and $17630, %rax
lea addresses_UC_ht+0x5776, %r12
clflush (%r12)
nop
nop
nop
xor $32701, %r15
mov (%r12), %bx
nop
nop
nop
and $11924, %r13
lea addresses_WT_ht+0x5523, %r13
nop
nop
nop
nop
dec %rax
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x120df, %rsi
nop
nop
nop
nop
add $74, %r9
movb (%rsi), %r15b
sub $10821, %r9
lea addresses_WT_ht+0x155c7, %r12
clflush (%r12)
nop
nop
cmp %r15, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0xfaff, %r9
xor $2425, %rsi
mov (%r9), %r13
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x18faf, %r15
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
nop
nop
sub $54481, %rbx
lea addresses_UC_ht+0xc26f, %rsi
lea addresses_D_ht+0xe76f, %rdi
nop
sub $57221, %r12
mov $92, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $11117, %rbx
lea addresses_D_ht+0xee2, %rsi
nop
sub %rcx, %rcx
movb (%rsi), %r9b
nop
nop
nop
sub $15379, %rsi
lea addresses_WT_ht+0x1b16f, %rsi
lea addresses_WT_ht+0x16eef, %rdi
and %r12, %r12
mov $91, %rcx
rep movsl
inc %r12
lea addresses_WC_ht+0xabef, %rsi
cmp %rdi, %rdi
mov (%rsi), %ax
and %rcx, %rcx
lea addresses_UC_ht+0x49a7, %rcx
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rcx)
add $57094, %r15
lea addresses_normal_ht+0x576f, %r12
nop
cmp $40546, %rdi
mov (%r12), %rcx
nop
nop
nop
nop
nop
cmp $19022, %r15
lea addresses_UC_ht+0x1b2cf, %rsi
lea addresses_WC_ht+0x466f, %rdi
nop
nop
nop
nop
and $38612, %rbx
mov $33, %rcx
rep movsl
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x13b6f, %rsi
lea addresses_D_ht+0x356f, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $110, %rcx
rep movsq
cmp $33582, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x2b6f, %rdx
nop
nop
nop
nop
nop
and $21309, %r15
vmovntdqa (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'49': 7349, '00': 14479, '45': 1}
00 00 00 00 00 49 00 49 00 00 49 00 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 00 49 00 00 49 00 49 00 00 49 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 00 49 00 49 00 49 00 00 49 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 00 49 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 49 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 00 49 00 49 00 49 00 00 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 00 49 00 49 00 00 49 00 00 49 00 49 00 00 00 00 49 00 49 00 00 49 00 49 49 00 00 00 49 00 49 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 00 49 00 49 00 49 00 00 00 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 00 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 00 00 49 00 49 00 00 49 00 49 00 00 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 49 00 00 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 00 49 00 49 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49
*/
