.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x142b, %rsi
lea addresses_D_ht+0xfcf5, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $47, %rcx
rep movsl
nop
nop
nop
nop
cmp $6899, %rbx
lea addresses_normal_ht+0x4073, %rdx
nop
nop
nop
and $36118, %rbp
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x17270, %rcx
nop
add $10457, %rsi
mov (%rcx), %edi
nop
nop
nop
mfence
lea addresses_UC_ht+0x1502b, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rcx), %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x14deb, %rdi
nop
nop
nop
nop
and $32405, %rsi
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0xfa2b, %rbx
add %rsi, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x302b, %rdx
nop
and %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x382b, %rcx
nop
nop
nop
nop
nop
inc %rdi
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
nop
nop
and $11535, %rbp
lea addresses_D_ht+0x2b, %rsi
lea addresses_normal_ht+0x50db, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0xdb2b, %r9
clflush (%r9)
cmp %rbx, %rbx
movl $0x61626364, (%r9)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x6e85, %rcx
nop
nop
nop
nop
inc %rsi
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
cmp %rbx, %rbx
lea addresses_A_ht+0x702b, %rdi
nop
nop
nop
nop
nop
inc %r9
movb (%rdi), %bl
and %r9, %r9
lea addresses_WT_ht+0x163db, %rsi
lea addresses_normal_ht+0x1d2cb, %rdi
nop
nop
nop
nop
cmp $36439, %r8
mov $61, %rcx
rep movsl
cmp %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdx

// Store
lea addresses_A+0xdfab, %r9
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_WC+0x102b, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub $23661, %r10
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'44': 10274, '45': 9818, '49': 1675, '00': 3, '46': 59}
00 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 49 44 45 44 45 44 45 44 45 44 49 49 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 49 44 45 44 45 44 45 44 45 44 45 49 45 44 45 44 45 44 49 44 45 44 45 49 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 45 45 44 49 44 45 44 45 44 45 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 49 44 49 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 49 44 45 44 45 44 49 44 45 49 44 45 44 45 44 45 44 49 44 45 44 45 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 49 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 49 45 45 44 45 44 45 44 49 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 49 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 45 44 45 44 45 45 44 45 44 45 45 44 49 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 49 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 49 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 49 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 49 49 44 45 44 45 44 45 44 45 44 49 44 49 44 45 44 49 44 45 44 45 44 45 49 44 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 46 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 49 44 45 44 45 49 44 45 44 45 49 44 45 44 45 44 45 44 45 44 44 45 44 45 44 49 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 45 45 44 45 49 49 44 45 44 45 44 45 44 49 44 45 45 44 45 44 45 44 45 49 44 45 44 45 44 49 44 45 44 45 44 45 44 45 49 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 49 44 45 44 45 44 45 44 45 44 49 49 45 44 45 44 49 49 44 45 44 45 44 45 49 44 45 44 45 46 45 44 45
*/
