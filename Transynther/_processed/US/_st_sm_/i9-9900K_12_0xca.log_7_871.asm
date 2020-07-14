.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b4e1, %rsi
lea addresses_A_ht+0x138ce, %rdi
nop
xor %r9, %r9
mov $81, %rcx
rep movsl
nop
nop
cmp $9537, %r12
lea addresses_D_ht+0xfee1, %r12
nop
nop
nop
nop
and $23998, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x189e1, %rdi
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x8d21, %rcx
clflush (%rcx)
nop
and %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rcx)
add $10840, %r9
lea addresses_WC_ht+0x161ec, %r12
nop
nop
nop
sub $21884, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0xc61, %r12
nop
nop
nop
lfence
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x77e1, %rdx
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
cmp $42877, %rdx
lea addresses_A_ht+0x11f61, %rcx
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
inc %r12
lea addresses_WT_ht+0xf6e1, %rdx
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x16771, %rdi
and $57941, %r9
mov (%rdi), %r12
sub $25522, %rdx
lea addresses_WC_ht+0x13121, %rsi
lea addresses_WT_ht+0xddc1, %rdi
inc %r12
mov $9, %rcx
rep movsw
cmp %r12, %r12
lea addresses_WC_ht+0x9ce1, %rsi
lea addresses_normal_ht+0x1d8e1, %rdi
nop
nop
nop
nop
nop
and $33925, %r12
mov $9, %rcx
rep movsb
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x14a61, %r13
nop
nop
nop
sub %rdi, %rdi
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rcx
nop
add %r12, %r12
lea addresses_D_ht+0x2e15, %rdx
nop
nop
nop
xor %r9, %r9
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r12
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x19a81, %rsi
mov $0x5790b000000000cd, %rdi
sub $62602, %r13
mov $13, %rcx
rep movsb
nop
nop
sub $59887, %r10

// Store
lea addresses_US+0x199b1, %r13
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r13)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
mov $0x79, %rsi
nop
nop
nop
xor %r10, %r10
movw $0x5152, (%rsi)
nop
inc %r10

// Store
lea addresses_US+0x1bae1, %r9
nop
nop
nop
nop
nop
sub $18769, %rsi
movl $0x51525354, (%r9)
nop
nop
xor $13930, %r8

// Store
lea addresses_normal+0x1ab61, %rdi
nop
sub %rsi, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_D+0x337d, %r13
cmp %r8, %r8
movb $0x51, (%r13)
sub $36323, %rcx

// Store
lea addresses_D+0x4261, %rcx
nop
nop
nop
nop
xor $15094, %r10
movw $0x5152, (%rcx)
nop
xor $56057, %rdi

// Faulty Load
lea addresses_US+0x1bae1, %r10
nop
nop
nop
nop
nop
sub $41675, %rsi
mov (%r10), %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_NC', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'54': 7}
54 54 54 54 54 54 54
*/
