.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x2f12, %rdx
nop
add $32196, %rdi
mov (%rdx), %r14
nop
nop
sub $46296, %r12
lea addresses_D_ht+0x11712, %rax
nop
nop
nop
xor $1253, %rbp
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x1b14a, %rsi
lea addresses_normal_ht+0x5862, %rdi
nop
add $12007, %rbp
mov $71, %rcx
rep movsl
nop
nop
nop
nop
nop
add $32226, %r12
lea addresses_normal_ht+0x24b2, %rcx
nop
add $17505, %rsi
mov (%rcx), %eax
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xd912, %rsi
lea addresses_normal_ht+0x8cdd, %rdi
xor %r8, %r8
mov $6, %rcx
rep movsl
nop
add $10974, %r12
lea addresses_UC_ht+0x10012, %rsi
lea addresses_D_ht+0x11412, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $112, %rcx
rep movsl
nop
cmp $36546, %r12
lea addresses_WC_ht+0x1ca12, %rsi
lea addresses_WT_ht+0x109b2, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $88, %rcx
rep movsw
nop
nop
add $45910, %rsi
lea addresses_D_ht+0xef52, %rsi
lea addresses_normal_ht+0x1b912, %rdi
nop
nop
nop
add $32941, %rbp
mov $66, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $27177, %rsi
lea addresses_D_ht+0x16a92, %rcx
sub %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
xor $5859, %rbp
lea addresses_WT_ht+0x1112, %rsi
lea addresses_D_ht+0x7232, %rdi
nop
add %r14, %r14
mov $63, %rcx
rep movsq
nop
xor %r12, %r12
lea addresses_WT_ht+0x18112, %rcx
clflush (%rcx)
sub $6025, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rcx)
nop
sub $28672, %rsi
lea addresses_UC_ht+0x7186, %rsi
lea addresses_WT_ht+0x1e512, %rdi
nop
add $31237, %rbp
mov $102, %rcx
rep movsw
nop
nop
nop
nop
nop
and $47786, %rsi
lea addresses_A_ht+0x172, %rcx
nop
nop
and $13734, %r8
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rbp
nop
xor %rbp, %rbp
lea addresses_D_ht+0x13de2, %r12
sub %rax, %rax
mov (%r12), %r8d
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0xac9f, %rsi
nop
nop
dec %r12
movb $0x51, (%rsi)
xor %rax, %rax

// Store
mov $0x112, %r12
nop
xor %rcx, %rcx
movl $0x51525354, (%r12)
and %rdx, %rdx

// Store
lea addresses_US+0x7b12, %rax
nop
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%rax)
nop
nop
inc %r14

// Faulty Load
mov $0x912, %rdx
nop
nop
nop
nop
sub %rcx, %rcx
movaps (%rdx), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'46': 2547, '00': 11480, '49': 5397, '45': 28, '48': 2377}
00 46 00 48 49 00 00 49 46 00 00 49 00 00 46 46 00 00 46 00 00 00 49 00 00 49 00 00 00 49 46 00 48 49 00 48 49 00 00 48 49 46 00 00 49 00 00 49 00 00 00 49 46 00 00 49 00 00 49 46 00 00 49 00 00 46 49 00 48 49 00 00 49 00 00 00 49 00 00 00 49 46 00 48 49 00 48 49 00 00 00 49 46 00 00 49 00 48 49 00 00 00 46 46 00 00 49 00 48 49 00 00 00 46 49 00 48 49 46 00 48 49 00 00 49 00 00 00 49 46 00 00 49 00 00 49 49 00 00 49 00 00 49 00 00 00 49 46 00 48 49 46 00 48 49 00 48 49 00 00 00 49 46 00 00 49 00 00 49 00 00 00 46 46 00 00 49 00 00 49 00 00 48 49 46 00 48 49 00 00 49 46 00 49 00 00 00 49 00 00 48 49 46 00 00 49 46 00 48 49 00 00 49 00 00 00 46 46 00 00 49 46 00 00 49 00 48 49 00 00 00 49 46 00 49 00 00 48 49 00 00 48 49 00 00 48 49 00 00 49 00 00 48 46 49 00 00 49 00 00 46 46 00 00 49 46 00 48 46 46 00 00 49 00 00 49 00 00 48 49 46 00 49 00 00 00 49 46 00 48 49 00 00 49 00 00 00 49 46 00 00 49 00 48 49 00 00 48 49 46 00 48 46 00 48 49 46 00 48 49 00 00 49 00 00 00 46 46 00 48 49 00 00 49 00 00 00 49 00 00 49 00 00 00 49 46 00 48 49 00 00 49 00 00 00 49 00 00 48 49 46 00 49 00 00 00 49 46 00 48 49 00 48 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 46 00 48 49 00 00 46 46 00 00 49 00 00 00 49 46 00 48 49 00 48 49 00 00 48 49 00 00 49 00 00 48 49 00 00 00 49 00 00 00 45 00 00 48 49 00 48 49 00 00 48 49 00 00 49 00 00 48 49 46 00 00 49 00 00 49 00 00 48 49 00 00 00 49 00 00 49 00 00 48 49 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 46 00 48 46 00 00 49 00 00 00 49 46 00 48 49 00 00 49 00 00 00 49 46 00 00 49 00 00 49 00 00 00 49 46 00 48 49 00 00 49 00 00 48 49 46 00 00 49 46 00 48 49 00 48 49 00 00 48 49 00 00 49 00 00 00 46 46 00 00 49 00 00 48 49 00 48 46 49 00 00 46 46 00 48 49 00 00 49 00 00 00 49 46 00 48 49 00 48 49 46 00 00 49 00 00 46 49 00 00 49 46 00 00 49 00 48 49 46 00 48 49 00 00 49 00 00 48 49 46 00 48 49 46 00 00 49 00 00 49 00 00 48 46 00 00 00 49 00 00 49 00 00 48 49 46 00 00 49 00 00 49 00 00 48 49 46 00 00 49 00 48 49 00 00 00 49 46 00 48 49 00 00 49 00 00 48 49 46 00 48 46 00 48 49 00 00 48 49 46 00 46 49 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 48 49 00 00 48 49 46 00 49 00 00 00 49 00 00 00 49 46 00 00 49 00 00 49 00 00 00 46 49 00 48 49 00 00 46 49 00 00 49 46 00 00 49 00 00 49 00 00 00 49 46 00 49 00 00 00 49 46 00 00 49 00 00 49 46 00 00 49 00 00 49 00 00 00 49 46 00 48 49 00 48 49 00 00 00 49 00 00 48 49 46 00 48 49 00 00 49 00 00 00 49 46 00 00 49 00 00 49 00 00 00 49 46 00 00 49 46 00 48 49 00 00 49 00 00 48 49 00 00 49 00 00 48 49 46 00 00 49 00 48 49 49 00 48 49 00 00 46 49 00 48 49 00 00 49 00 00 48 49 46 00 48 49 00 00 46 46 00 00 49 49 00 00 49 00 00 00 46 00 00 49 00 00 48 49 00 00 48 49 00 00 49 00 00 48 49 00 00 00 46 46 00 48 49 00 00 49 00 00 48 49 00 00 49 00 00 00 49 46 00 48 49 00 00 49 46 00 00 49 00 00 49 00 00 00 46 49 00 48 49 00 00 49 00 00 00 46 46 00 48 49 00 00 49 00 00 00 49 00 00 48 49 46 00 00 49 00 48 49 00 00 00 49 00 00 48 49 00 00 00 49 46 00 49 00 00 48
*/
