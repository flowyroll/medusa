.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19988, %r9
nop
xor $60094, %r14
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
add %r14, %r14
lea addresses_UC_ht+0x142cc, %rbx
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
sub $24914, %r9
lea addresses_D_ht+0x66e4, %r14
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%r14)
nop
nop
xor $2263, %r15
lea addresses_UC_ht+0x689c, %rsi
lea addresses_WC_ht+0xfcb4, %rdi
nop
cmp %r9, %r9
mov $97, %rcx
rep movsq
nop
add $11191, %rsi
lea addresses_WT_ht+0x10a64, %r9
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, (%r9)
nop
nop
nop
sub $23912, %rdx
lea addresses_WT_ht+0x147ef, %rdi
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x6c42, %rsi
lea addresses_normal_ht+0xaf64, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $23, %rcx
rep movsw
nop
nop
nop
cmp $54447, %r15
lea addresses_UC_ht+0x13574, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
cmp $22014, %r14
lea addresses_WC_ht+0x8304, %rdx
nop
nop
add %r15, %r15
movw $0x6162, (%rdx)
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x19bf0, %rsi
lea addresses_A_ht+0x19764, %rdi
nop
nop
nop
nop
mfence
mov $90, %rcx
rep movsb
sub $60381, %r10
lea addresses_WT_ht+0x13b64, %r9
nop
nop
nop
and $45511, %rcx
mov (%r9), %r14w
and $65312, %r10
lea addresses_D_ht+0xa884, %rcx
nop
nop
sub $7647, %r9
mov (%rcx), %rbx
nop
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x14764, %rsi
lea addresses_WC_ht+0x19b64, %rdi
nop
nop
nop
cmp %r15, %r15
mov $8, %rcx
rep movsw
sub $25713, %r15
lea addresses_normal_ht+0x17ab1, %rbx
xor $37312, %rdi
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x13c56, %rsi
lea addresses_A_ht+0x7f64, %rdi
nop
and %rbx, %rbx
mov $65, %rcx
rep movsb
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rdx

// Load
mov $0xba4, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%r11), %r14b
nop
nop
cmp $13914, %r12

// Store
mov $0x8e4, %rdx
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
cmp $14337, %r12

// Load
lea addresses_WT+0x1e0f5, %rbx
nop
nop
nop
nop
inc %r11
mov (%rbx), %r8
nop
nop
nop
add %r8, %r8

// Store
lea addresses_RW+0x10fd8, %rbx
nop
nop
nop
add $11841, %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %r11, %r11

// Load
mov $0x4e59ec0000000594, %rdx
nop
nop
xor %rbx, %rbx
mov (%rdx), %r14w
nop
nop
nop
nop
sub $29699, %r11

// Faulty Load
mov $0x6adca50000000f64, %r12
nop
nop
and %r11, %r11
movaps (%r12), %xmm4
vpextrq $0, %xmm4, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
