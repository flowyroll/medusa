.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a234, %rcx
nop
nop
nop
nop
add $10058, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x72cc, %rbx
cmp $47442, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
nop
add $56721, %r11
lea addresses_D_ht+0x136b4, %rsi
lea addresses_WC_ht+0x3d74, %rdi
nop
nop
add $2293, %rbp
mov $14, %rcx
rep movsq
nop
inc %r11
lea addresses_UC_ht+0x10710, %rcx
cmp $21199, %rdi
movw $0x6162, (%rcx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x4734, %rsi
nop
nop
add $39682, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
and $0xffffffffffffffc0, %rsi
vmovaps %ymm3, (%rsi)
nop
nop
nop
nop
sub $2782, %rsi
lea addresses_normal_ht+0xc274, %rcx
nop
nop
nop
nop
nop
cmp $42254, %rdx
mov (%rcx), %bp
nop
inc %rcx
lea addresses_D_ht+0x79f4, %rdi
nop
nop
add $50705, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
sub $44659, %rbp
lea addresses_WC_ht+0x7f94, %rsi
lea addresses_A_ht+0x14f8e, %rdi
and %rbp, %rbp
mov $60, %rcx
rep movsl
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x1e1a4, %rsi
lea addresses_WC_ht+0x12450, %rdi
nop
nop
nop
and %rdx, %rdx
mov $32, %rcx
rep movsl
add %rdx, %rdx
lea addresses_UC_ht+0x8a74, %rsi
lea addresses_D_ht+0x9374, %rdi
nop
nop
dec %r11
mov $22, %rcx
rep movsb
cmp $7299, %r9
lea addresses_UC_ht+0xbbf4, %rsi
lea addresses_normal_ht+0xfbc, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $15, %rcx
rep movsb
nop
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1d3f4, %rbx
nop
nop
nop
nop
and $15967, %rdi
movw $0x5152, (%rbx)
cmp %rbx, %rbx

// Store
lea addresses_A+0xf52c, %rbp
nop
nop
inc %r10
movl $0x51525354, (%rbp)
nop
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_D+0x16d74, %r10
nop
nop
nop
nop
nop
inc %rbx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
sub $4916, %r10

// Faulty Load
lea addresses_A+0xcff4, %rbx
cmp %rdx, %rdx
movaps (%rbx), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'46': 91, '45': 10867, '00': 3160, '48': 7711}
00 48 48 48 48 48 48 00 48 48 48 48 48 45 45 45 45 45 45 48 48 45 45 45 45 45 45 48 00 48 45 45 45 45 45 45 45 46 48 45 48 48 48 48 48 00 48 45 45 45 45 45 00 48 48 48 45 45 45 00 00 48 48 45 45 00 48 00 48 45 45 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 48 45 45 45 45 45 45 48 48 45 45 45 45 48 48 48 48 48 48 48 48 48 48 48 45 45 45 45 45 45 45 45 45 45 00 45 48 45 45 45 00 45 45 45 00 48 48 45 45 46 48 00 48 45 45 45 45 48 45 45 48 48 48 48 48 00 48 45 45 45 00 00 45 45 45 45 00 00 45 45 45 45 45 48 45 45 45 45 00 00 48 45 45 45 45 45 45 45 45 45 45 48 48 48 45 45 45 45 00 48 00 48 48 48 45 48 48 48 48 48 48 48 45 45 00 48 48 45 45 45 45 48 45 48 48 45 45 45 45 46 48 00 48 48 45 45 48 00 48 48 48 48 48 48 00 48 48 48 45 48 45 48 45 45 45 45 45 00 48 45 45 48 48 45 45 45 45 45 48 48 45 45 45 48 48 45 00 45 45 45 45 45 00 48 00 48 00 48 48 45 45 45 00 48 48 48 45 45 45 45 45 48 48 48 45 45 45 45 45 45 00 48 48 48 48 48 45 48 00 00 48 45 45 45 45 45 45 45 45 48 48 00 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 45 45 45 45 45 48 48 48 48 45 48 45 45 45 45 48 48 48 48 45 45 45 00 00 45 45 45 45 00 00 45 45 45 45 00 48 48 48 48 48 48 48 48 48 48 48 45 45 00 48 00 48 45 45 45 45 45 45 00 48 48 45 45 45 45 45 48 45 45 45 45 45 45 45 45 00 48 48 48 48 00 48 45 45 45 45 48 48 48 48 48 48 00 48 48 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 00 00 48 48 48 48 48 48 48 48 45 45 46 48 45 45 45 45 45 00 00 48 48 48 48 48 48 45 45 45 48 45 00 48 00 48 48 45 00 00 48 48 48 48 45 45 45 48 48 48 48 48 48 45 48 48 45 45 45 45 45 45 48 48 00 45 45 45 45 00 48 48 48 48 45 45 45 45 48 48 45 45 45 00 48 48 48 48 48 45 48 48 48 48 48 00 00 45 45 00 00 00 48 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 48 48 48 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 48 00 48 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 00 00 48 48 45 45 00 45 45 45 45 45 00 00 48 45 45 45 00 48 48 48 45 45 45 45 00 00 48 45 45 45 00 00 45 45 45 45 00 00 48 48 45 45 45 45 45 45 45 45 45 45 45 00 00 45 48 00 48 00 00 48 48 45 45 45 45 45 45 45 48 48 48 48 00 48 45 48 45 45 45 45 48 45 48 48 48 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 48 45 45 45 45 45 48 00 48 48 48 48 48 48 48 48 00 48 45 45 45 45 45 45 45 45 46 48 00 48 00 45 45 45 00 00 48 48 48 48 48 45 45 45 45 45 45 45 00 00 48 48 45 45 00 00 48 45 45 45 45 48 45 48 48 48 48 48 48 48 45 45 48 48 48 00 48 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 48 45 45 45 45 48 45 45 45 45 00 48 45 45 45 45 45 45 00 48 48 48 48 48 45 45 45 45 45 45 48 00 48 48 48 45 45 00 00 48 45 45 45 00 48 48 45 45 45 45 45 48 45 45 45 45 45 48 48 45 45 45 45 45 45 45 45 45 45 00 00 48 48 48 48 48 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 45 00 00 48 45 45 45 00 45 48 48 48 48 48 45 48 48 45 45 45 46 48 48 48 45 45 45 45 45 45 45 45 45 00 48 00 48 48 45 45 45 45 48 48 48 48 48 48 48 48 48 48 48 45 45 00 48 48 00 48 45 45 45 45 45 45 45 45 45 45 45 45 45 00 48 48 48 00 00 45 48 45 45 00 00 48 45 45 45 45 48
*/
