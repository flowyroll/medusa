.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x44ac, %rdx
nop
nop
nop
nop
nop
sub $52711, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
nop
nop
xor $3715, %r15
lea addresses_A_ht+0x82d8, %rsi
lea addresses_WC_ht+0x1b64, %rdi
nop
nop
nop
nop
nop
xor $29523, %r14
mov $82, %rcx
rep movsb
nop
nop
nop
and $46784, %r15
lea addresses_WC_ht+0xd3c, %rdx
nop
nop
sub $23800, %rsi
mov (%rdx), %r15
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xfbac, %rdx
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
and $53839, %rcx
lea addresses_D_ht+0x1b08c, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
xor %rdi, %rdi
lea addresses_D_ht+0x18dac, %r13
and %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r13)
sub $33523, %rdx
lea addresses_D_ht+0x184ac, %rsi
nop
nop
nop
add $21738, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x291c, %rsi
lea addresses_normal_ht+0x1dec8, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $50, %rcx
rep movsq
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x161ac, %rbx
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x9d2c, %rsi
lea addresses_UC_ht+0xefac, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $43, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $30564, %r14
lea addresses_WC_ht+0x132e0, %rsi
lea addresses_normal_ht+0x46ac, %rdi
nop
nop
inc %rdx
mov $49, %rcx
rep movsw
nop
nop
sub $37741, %r15
lea addresses_D_ht+0xa2d0, %rsi
lea addresses_D_ht+0x1e244, %rdi
nop
nop
nop
nop
nop
and $58669, %rdx
mov $7, %rcx
rep movsq
nop
nop
xor $2264, %r14
lea addresses_UC_ht+0xf3ac, %r15
nop
nop
nop
sub %rbx, %rbx
mov (%r15), %rdi
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0x69ac, %r8
nop
cmp $55893, %r11
movl $0x51525354, (%r8)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0xdbac, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movaps %xmm2, (%rcx)
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_UC+0x113ac, %r8
and $41868, %rbx
movntdqa (%r8), %xmm2
vpextrq $1, %xmm2, %rbp
nop
xor $2965, %r8

// Faulty Load
lea addresses_WT+0xa1ac, %rax
clflush (%rax)
nop
nop
and %rbp, %rbp
mov (%rax), %r10w
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
