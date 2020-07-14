.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xb344, %rdx
nop
nop
nop
nop
nop
xor $45595, %rax
movl $0x61626364, (%rdx)
nop
nop
nop
add $39935, %rcx
lea addresses_UC_ht+0x76cc, %rsi
lea addresses_WC_ht+0x1ac34, %rdi
nop
nop
inc %r8
mov $90, %rcx
rep movsw
nop
nop
nop
and $16400, %rcx
lea addresses_WC_ht+0x117cc, %rax
nop
nop
nop
xor %r15, %r15
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x57c4, %rcx
nop
add %rax, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add $314, %rdi
lea addresses_WT_ht+0xaa34, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $48987, %rdi
mov (%rcx), %rdx
nop
nop
nop
xor $49549, %rsi
lea addresses_D_ht+0x11544, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%r8), %xmm6
vpextrq $1, %xmm6, %rdi
nop
xor $35447, %rdi
lea addresses_normal_ht+0xa4c4, %rdi
clflush (%rdi)
cmp $5347, %rax
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
sub $10572, %r8
lea addresses_UC_ht+0x7144, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%rdi), %rax
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x17c34, %rdx
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdx)
nop
cmp $61730, %rax
lea addresses_D_ht+0x1da2b, %rsi
lea addresses_UC_ht+0x1cbb4, %rdi
nop
add $16421, %r15
mov $79, %rcx
rep movsl
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1c392, %rax
nop
add $35580, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
inc %rsi

// Store
lea addresses_normal+0x1e544, %r11
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
inc %r11

// Load
lea addresses_PSE+0xc144, %r11
nop
nop
nop
sub %rdi, %rdi
mov (%r11), %esi
nop
cmp %r11, %r11

// Load
mov $0xd02, %rsi
nop
sub $49117, %rax
movaps (%rsi), %xmm6
vpextrq $0, %xmm6, %r12
and %rdi, %rdi

// Load
lea addresses_PSE+0xd484, %rax
nop
nop
and %r12, %r12
mov (%rax), %cx
add %r11, %r11

// Store
lea addresses_D+0x12dc4, %r12
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r12)
nop
nop
xor $37120, %rbx

// Faulty Load
lea addresses_US+0x18944, %r12
nop
nop
nop
nop
nop
cmp %r11, %r11
vmovaps (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'46': 541, '44': 234, '00': 42, '48': 1}
46 46 46 46 46 46 46 46 44 46 44 44 44 46 46 46 46 46 00 46 00 46 46 00 46 00 46 46 46 46 00 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 44 44 46 46 46 46 46 44 46 44 46 46 46 44 44 44 46 46 44 46 44 46 46 44 46 46 46 44 44 46 44 44 44 46 44 46 44 46 46 46 46 46 46 44 46 44 46 44 46 46 46 46 46 46 46 46 46 44 44 46 46 46 44 46 44 00 46 44 46 46 00 46 44 46 46 46 44 44 46 46 44 46 46 46 46 46 44 44 44 46 46 46 46 46 44 44 46 46 44 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 44 44 00 00 46 46 44 46 46 44 46 46 46 46 46 46 46 44 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 44 46 46 44 46 00 46 46 46 44 46 46 46 44 46 46 44 44 46 44 46 46 46 44 46 44 46 44 44 44 00 44 44 44 44 46 46 44 46 44 44 44 44 00 46 46 44 46 46 44 46 46 44 46 46 46 44 46 44 44 44 46 44 46 46 46 44 46 46 46 44 46 46 44 44 00 46 44 46 46 00 46 46 46 46 46 44 46 46 44 46 44 46 44 46 44 46 46 44 44 44 44 44 44 46 46 46 00 46 46 46 46 46 46 44 46 46 46 46 44 46 44 46 44 46 46 46 44 46 44 46 46 46 46 44 46 44 46 46 44 46 46 46 44 44 46 00 46 46 46 46 46 44 44 46 44 46 44 46 46 46 46 46 44 46 00 00 46 46 46 00 46 44 46 46 46 46 46 46 46 44 46 44 46 00 46 46 44 44 46 44 46 46 46 46 46 44 46 46 44 44 44 46 46 46 46 44 46 44 46 44 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 44 46 44 46 44 46 46 44 44 46 44 44 44 44 44 46 46 46 44 46 00 00 44 46 46 46 44 46 44 46 44 46 46 46 46 46 46 46 46 44 46 44 46 44 46 46 44 00 46 46 44 46 46 44 46 46 46 44 46 44 46 46 44 46 44 46 46 46 46 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 46 46 46 44 46 44 44 46 46 46 46 46 46 46 44 46 00 44 46 46 44 44 44 44 46 46 44 46 46 46 46 44 00 46 46 46 00 00 00 44 44 46 00 44 44 46 46 46 44 46 44 46 46 00 44 44 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 44 46 46 44 46 44 46 46 46 44 46 46 44 46 46 46 44 00 00 46 46 46 44 00 46 46 44 46 46 46 46 44 46 46 44 46 46 44 44 46 46 44 00 44 46 44 46 46 46 44 44 46 46 46 46 46 46 46 46 44 44 46 46 46 46 44 46 46 46 44 44 46 46 46 44 00 44 46 00 44 46 46 46 48 46 44 46 44 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 00 46 44 46 46 46 46 46 46 46 46 44 46 46 46 44 46 44 00 46 46 44 46 44 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 44 44 44 44 44 46 46 46 44 46 46 46 44 46 00 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 00 44 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 44 46 46
*/
