.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1228, %rsi
lea addresses_WT_ht+0x1b4a8, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $22, %rcx
rep movsb
nop
nop
nop
nop
and $61954, %rcx
lea addresses_WT_ht+0x8a28, %rcx
cmp %r11, %r11
mov (%rcx), %r15w
inc %rdi
lea addresses_WC_ht+0x16a28, %rax
nop
nop
nop
nop
cmp $58169, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rax)
and %r15, %r15
lea addresses_normal_ht+0x1028, %rsi
clflush (%rsi)
inc %r11
movb (%rsi), %cl
nop
nop
nop
nop
sub $29925, %rax
lea addresses_D_ht+0x13928, %r15
nop
dec %r8
movb $0x61, (%r15)
nop
nop
dec %r15
lea addresses_UC_ht+0x6f14, %rsi
lea addresses_normal_ht+0x18c68, %rdi
cmp $16341, %r14
mov $23, %rcx
rep movsq
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x18828, %r8
nop
sub %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %r8
movaps %xmm0, (%r8)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0xfb28, %r15
nop
nop
nop
nop
nop
sub $4133, %rdi
movb (%r15), %r14b
nop
nop
cmp $59558, %rdi
lea addresses_UC_ht+0x3738, %rsi
lea addresses_A_ht+0xb408, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $41, %rcx
rep movsq
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0xae24, %rsi
lea addresses_WC_ht+0x60e8, %rdi
nop
nop
nop
nop
nop
cmp $2087, %r11
mov $0, %rcx
rep movsw
sub %r8, %r8
lea addresses_WT_ht+0x194a2, %rcx
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
cmp $45646, %r8
lea addresses_WT_ht+0x1d70, %rsi
lea addresses_D_ht+0x68f8, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $41126, %r15
mov $82, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_A_ht+0x17e88, %rsi
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx

// Faulty Load
lea addresses_UC+0x11a28, %r15
nop
cmp $61741, %rbx
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
