.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a4aa, %rbx
nop
nop
nop
nop
nop
cmp $1487, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x931a, %rsi
lea addresses_normal_ht+0x180ba, %rdi
nop
and %r12, %r12
mov $81, %rcx
rep movsb
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x71da, %r12
nop
nop
nop
nop
and $4931, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%r12)
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x21da, %rdi
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1e2e6, %rsi
lea addresses_WC_ht+0xc09a, %rdi
clflush (%rsi)
nop
add %r11, %r11
mov $65, %rcx
rep movsl
nop
nop
nop
sub $25242, %r10
lea addresses_D_ht+0x3fda, %rsi
lea addresses_A_ht+0x6fda, %rdi
nop
nop
nop
dec %r12
mov $47, %rcx
rep movsl
dec %rdi
lea addresses_WT_ht+0x315a, %rbx
nop
sub %rdi, %rdi
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
xor %rax, %rax
lea addresses_WT_ht+0x65da, %rsi
lea addresses_UC_ht+0x14d8a, %rdi
nop
nop
nop
nop
sub $55230, %rbx
mov $47, %rcx
rep movsl
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x51d8, %r12
sub %rbx, %rbx
movb (%r12), %cl
nop
nop
nop
mfence
lea addresses_A_ht+0x7f32, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rdi), %rcx
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x4a5a, %rax
add %rdi, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1317a, %rcx
nop
xor %rdi, %rdi
mov (%rcx), %rax
nop
nop
nop
add $16724, %r10
lea addresses_normal_ht+0x13ada, %rcx
nop
nop
nop
nop
xor $1277, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xefda, %rdi
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
xor $5163, %rcx
lea addresses_normal_ht+0xf250, %rax
nop
nop
nop
nop
cmp $8454, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0x1d76e, %rdx
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rdx)
nop
and %r12, %r12

// Load
lea addresses_WC+0x6aca, %rax
clflush (%rax)
nop
cmp %rcx, %rcx
vmovaps (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
nop
add $28498, %r12

// Store
lea addresses_D+0x1f662, %rbp
nop
nop
xor $26151, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovaps %ymm1, (%rbp)
nop
nop
nop
nop
and $19000, %rdx

// Load
lea addresses_D+0x1dda, %rbx
nop
add $27530, %rcx
mov (%rbx), %bp
nop
nop
nop
nop
cmp %r12, %r12

// Load
lea addresses_WC+0x8c8e, %rcx
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rcx), %rdx
nop
nop
nop
dec %r14

// Store
lea addresses_PSE+0x1a5da, %r14
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r14)
cmp $54270, %rdx

// Store
lea addresses_PSE+0x1075a, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rbx)
nop
sub %rax, %rax

// Store
lea addresses_A+0x10135, %rcx
nop
nop
nop
nop
nop
sub $34037, %rbx
movl $0x51525354, (%rcx)
inc %r12

// Store
mov $0x69e, %rdx
add %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
add $62704, %r14

// Faulty Load
mov $0xfda, %rcx
nop
nop
xor $10369, %rbp
vmovntdqa (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'46': 1}
46
*/
