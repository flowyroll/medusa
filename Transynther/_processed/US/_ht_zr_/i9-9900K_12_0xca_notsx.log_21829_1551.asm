.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x105f7, %rsi
lea addresses_normal_ht+0x13664, %rdi
clflush (%rdi)
cmp $37379, %rbx
mov $102, %rcx
rep movsl
and %rbp, %rbp
lea addresses_normal_ht+0xeed4, %r13
nop
nop
nop
and $26505, %r8
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x3214, %r13
nop
nop
nop
nop
nop
and $49219, %rdi
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x12dd4, %rsi
nop
nop
and %r13, %r13
mov (%rsi), %cx
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x15354, %r8
nop
nop
sub %rdi, %rdi
movb $0x61, (%r8)
nop
nop
nop
nop
sub $39442, %r13
lea addresses_UC_ht+0x13804, %rsi
lea addresses_A_ht+0x1ee54, %rdi
sub %r13, %r13
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x6c04, %rsi
nop
nop
add $1321, %rcx
movw $0x6162, (%rsi)
add %r13, %r13
lea addresses_A_ht+0x30d4, %rdi
clflush (%rdi)
nop
nop
nop
cmp $53031, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xd4, %rsi
clflush (%rsi)
dec %rbx
mov (%rsi), %r13d
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0xf75c, %rbp
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x41a2, %rsi
lea addresses_WT_ht+0x91d4, %rdi
clflush (%rsi)
nop
nop
sub %rbx, %rbx
mov $66, %rcx
rep movsw
nop
nop
dec %rbp
lea addresses_D_ht+0x14414, %rdi
and %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdi)
and $12043, %rcx
lea addresses_WC_ht+0xb854, %rbx
nop
dec %rbp
mov (%rbx), %di
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1d10, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%rdi), %rcx
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x10d4, %rsi
add $28188, %r8
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0x1df8, %rcx
nop
nop
nop
nop
nop
cmp $4761, %r10
movl $0x51525354, (%rcx)
and %rbx, %rbx

// Store
lea addresses_D+0x1b2c4, %r8
clflush (%r8)
add %r15, %r15
movl $0x51525354, (%r8)
nop
nop
nop
nop
cmp $55356, %rdx

// Store
mov $0xd94, %r10
nop
dec %r8
movl $0x51525354, (%r10)
nop
sub %rbx, %rbx

// Store
lea addresses_A+0xbed4, %r10
nop
nop
nop
add %rax, %rax
movw $0x5152, (%r10)
nop
sub %rdx, %rdx

// Store
lea addresses_UC+0x194f4, %r15
nop
nop
cmp %r10, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_US+0x78d4, %rdx
nop
nop
nop
sub $3967, %rcx
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'49': 10879, '00': 21, '44': 10929}
00 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44
*/
