.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2453, %rcx
inc %rdi
mov (%rcx), %r10w
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x16e73, %rdi
nop
nop
xor $20632, %rbp
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1bbdd, %r13
nop
nop
nop
nop
nop
xor %rbx, %rbx
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rdi
xor %r10, %r10
lea addresses_D_ht+0xb673, %rbx
clflush (%rbx)
sub %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
and $15052, %r13
lea addresses_UC_ht+0x9673, %rbp
nop
nop
nop
nop
nop
and %r8, %r8
movb $0x61, (%rbp)
cmp %rdi, %rdi
lea addresses_A_ht+0xa173, %rsi
lea addresses_D_ht+0x1da33, %rdi
nop
nop
xor %r13, %r13
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $15636, %rbx
lea addresses_A_ht+0x178b, %r10
nop
nop
nop
add %rdi, %rdi
movb (%r10), %r8b
nop
nop
inc %rcx
lea addresses_D_ht+0x38a3, %rsi
nop
nop
nop
nop
nop
dec %r10
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x15173, %r10
nop
nop
nop
lfence
movw $0x6162, (%r10)
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x94f3, %r8
clflush (%r8)
nop
nop
dec %rbx
movl $0x51525354, (%r8)
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_D+0x1e673, %r9
nop
sub $46291, %r8
movntdqa (%r9), %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'46': 5557, '00': 7016, '45': 9191, '48': 65}
45 00 45 00 45 00 45 45 00 46 45 45 45 45 00 45 00 46 46 00 45 00 46 45 00 45 00 46 00 45 00 45 00 45 00 45 45 45 45 45 00 45 46 45 00 46 45 45 45 00 45 46 45 45 00 46 46 46 45 00 45 00 45 00 45 00 46 45 00 46 45 45 46 45 45 45 46 45 45 45 46 00 46 46 45 00 46 00 46 45 45 00 00 45 48 46 00 00 46 46 00 45 46 45 45 45 45 46 46 00 46 46 45 00 45 45 46 00 45 45 00 45 00 46 45 00 45 00 45 00 45 00 46 00 45 45 00 46 45 45 45 00 46 45 45 00 46 00 46 00 45 00 46 00 46 00 46 00 45 45 45 00 45 00 45 00 46 45 46 00 46 45 45 46 45 00 46 45 00 45 00 45 45 00 45 46 45 00 46 00 45 00 00 45 00 45 46 00 45 46 45 00 45 45 45 46 46 00 46 00 46 46 45 00 45 00 45 45 00 46 45 00 46 45 00 45 00 00 46 46 00 46 00 46 00 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 46 45 45 48 45 46 45 00 46 00 45 45 46 45 46 45 00 46 00 45 48 46 45 45 00 45 45 46 00 45 46 00 46 45 46 00 46 45 00 46 45 00 46 00 45 00 00 45 46 45 46 45 00 46 45 00 45 00 45 00 45 00 46 00 46 46 45 00 45 45 00 45 00 46 45 00 46 00 45 46 45 00 46 45 46 46 00 45 48 46 00 46 46 45 46 00 46 00 45 00 45 00 46 00 45 00 45 00 45 45 45 46 00 46 00 45 45 00 46 45 00 46 46 45 00 46 45 45 00 46 45 00 45 00 45 00 45 45 00 46 00 46 00 46 00 46 45 00 46 46 45 00 00 00 45 00 46 45 00 45 45 45 00 46 45 45 45 00 45 00 45 00 46 00 46 45 45 46 00 45 00 00 46 45 45 00 00 45 00 46 45 46 45 45 00 45 00 45 00 46 00 46 45 45 46 46 00 46 45 45 45 45 00 45 00 45 00 45 00 00 45 45 00 46 45 45 00 45 00 46 46 00 45 00 45 00 00 45 00 45 46 46 45 45 00 46 45 00 45 46 00 45 45 46 00 46 00 45 45 45 45 45 46 45 45 00 45 45 00 45 00 45 45 45 46 46 45 46 00 45 45 00 45 45 00 46 45 00 45 45 00 46 45 00 46 00 46 45 00 45 45 45 00 45 45 00 45 00 45 00 46 46 46 45 00 45 00 46 45 46 45 45 45 46 00 46 45 45 00 46 00 46 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 00 46 00 46 00 46 00 45 00 45 45 00 46 00 45 00 45 45 45 45 46 00 45 46 46 00 45 00 46 45 00 46 00 46 00 46 45 45 00 00 45 00 46 45 46 46 45 00 45 00 45 00 46 46 46 45 46 45 45 00 45 46 45 46 00 46 45 00 46 45 00 45 45 46 46 45 00 45 45 45 45 00 46 00 45 45 00 46 00 46 46 00 45 00 45 00 45 45 00 46 00 45 00 45 45 46 00 45 00 45 00 46 45 45 46 45 00 46 46 00 45 45 00 45 46 00 46 45 45 00 46 00 45 00 00 45 00 45 45 45 45 45 45 45 46 45 00 45 00 45 45 46 45 45 00 46 45 00 46 45 00 45 00 45 00 45 45 45 46 00 46 45 45 46 45 46 46 00 46 00 46 45 45 45 00 45 45 45 00 45 45 45 45 00 45 46 45 00 46 45 46 45 48 45 45 45 46 45 00 45 00 45 45 45 00 46 46 45 45 00 46 46 45 45 46 46 00 45 00 45 45 00 46 45 45 45 46 45 45 00 45 45 46 45 00 46 46 46 00 46 45 00 46 46 46 45 45 00 46 00 46 45 00 46 45 46 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 46 00 45 45 00 46 00 45 45 46 46 45 46 00 45 00 46 45 45 00 46 46 45 45 00 45 00 00 45 45 45 45 45 00 00 45 00 46 00 45 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 46 46 46 00 45 00 00 45 00 46 00 46 45 00 46 00 46 00 46 45 45 45 46 45 00 46 00 00 45 00 46 46 00 45 00 00 45 00 45 45 00 45 45 45 45 00 45 46 00 00 46 00 46 00 46 00 45 00 45 45 45 46 46 45 00 46
*/
