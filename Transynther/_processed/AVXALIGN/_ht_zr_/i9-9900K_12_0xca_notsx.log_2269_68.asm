.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x71e6, %rsi
lea addresses_WC_ht+0x114a6, %rdi
nop
nop
xor $39632, %rax
mov $97, %rcx
rep movsl
dec %rbx
lea addresses_UC_ht+0x1a9d3, %r10
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
and $0xffffffffffffffc0, %r10
vmovaps %ymm3, (%r10)
cmp %r10, %r10
lea addresses_D_ht+0x65e6, %rsi
clflush (%rsi)
and %rbp, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x81e6, %rsi
sub %r10, %r10
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm2
vpextrq $0, %xmm2, %rbx
nop
inc %rbx
lea addresses_UC_ht+0x1bec6, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %rcx, %rcx
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
and $16822, %rsi
lea addresses_WT_ht+0xf63f, %rsi
lea addresses_normal_ht+0xa966, %rdi
nop
nop
nop
nop
nop
sub $41152, %r11
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
add $59371, %rax
lea addresses_D_ht+0x10320, %rsi
lea addresses_normal_ht+0x2de6, %rdi
nop
nop
and %rbp, %rbp
mov $78, %rcx
rep movsq
and %rax, %rax
lea addresses_D_ht+0x158e6, %r11
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1aad6, %rsi
lea addresses_UC_ht+0x11e6, %rdi
nop
nop
nop
nop
dec %rbp
mov $34, %rcx
rep movsq
nop
nop
nop
nop
and $51576, %r10
lea addresses_A_ht+0xa9e6, %rbp
nop
nop
nop
nop
cmp $26782, %r10
movl $0x61626364, (%rbp)
nop
nop
nop
sub $5672, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_US+0x1fde6, %rax
nop
nop
add $55676, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovaps %ymm7, (%rax)
add %r11, %r11

// Load
lea addresses_UC+0x188d6, %r11
inc %rsi
mov (%r11), %r9

// Exception!!!
mov (0), %rax
cmp %r9, %r9

// Store
lea addresses_RW+0x1b1e6, %rsi
nop
xor $35180, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rsi)
cmp %r10, %r10

// Faulty Load
lea addresses_UC+0x101e6, %rax
nop
nop
nop
nop
nop
and %r15, %r15
vmovntdqa (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11}}
{'46': 1404, '49': 20, '00': 845}
46 46 49 46 00 46 46 00 00 00 46 46 00 46 46 00 46 00 46 46 00 00 00 00 46 46 46 46 46 46 00 46 00 46 46 00 46 00 46 46 00 46 00 46 00 46 00 46 46 00 00 46 46 46 00 00 46 00 00 46 46 00 00 46 46 00 46 00 46 00 46 46 46 00 46 46 00 00 46 46 00 46 46 00 46 46 00 00 46 46 46 46 46 00 00 46 00 46 00 46 46 46 00 46 46 46 46 46 00 00 46 00 46 46 00 46 00 00 46 46 00 00 46 46 00 46 00 46 00 00 46 46 46 46 46 00 46 46 00 46 46 46 00 46 00 00 00 46 00 00 46 46 00 46 00 46 46 46 46 46 00 00 46 46 00 46 00 46 46 00 46 46 46 46 00 00 46 00 46 00 46 00 46 46 46 00 46 46 46 46 46 00 00 49 46 00 46 46 46 46 00 00 00 00 00 46 46 49 46 46 00 00 46 46 00 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 00 46 00 00 00 00 46 46 46 46 00 00 46 46 00 46 46 00 46 46 46 46 00 46 46 00 46 00 00 46 46 00 46 00 00 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 46 00 46 00 46 46 46 46 00 00 46 00 46 00 46 00 00 00 46 46 46 46 46 46 00 46 00 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 00 46 00 46 46 46 46 46 46 46 46 00 00 46 46 00 46 46 46 46 00 46 46 46 00 00 46 00 00 46 00 00 00 46 00 46 46 46 46 00 46 00 00 46 00 00 00 00 46 46 46 00 00 46 46 46 00 46 00 46 46 46 00 00 46 46 46 46 46 46 00 46 00 00 46 46 46 00 46 46 00 46 46 46 00 46 46 46 46 00 46 46 00 46 49 00 00 00 00 46 46 46 00 00 46 00 46 46 46 46 00 46 00 46 00 00 46 46 46 46 46 46 46 00 46 00 00 46 00 46 46 46 00 46 46 46 46 00 46 00 46 00 46 00 00 00 00 00 00 00 46 46 46 46 00 46 46 00 00 46 00 46 00 46 46 00 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 00 46 00 46 00 46 46 46 46 46 00 00 00 00 46 00 00 46 00 46 00 00 00 46 00 46 00 46 46 46 00 46 00 00 46 46 46 00 46 46 46 46 00 46 46 46 46 00 00 00 00 00 46 46 46 00 00 46 00 00 00 46 46 46 00 46 46 00 00 00 00 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 00 00 00 46 46 46 46 00 00 00 00 00 00 46 00 46 00 46 46 46 46 46 00 46 00 46 00 46 46 46 46 46 00 00 00 00 46 46 00 46 00 46 46 00 00 00 46 46 00 46 00 00 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 46 00 00 46 46 00 46 46 46 46 46 46 00 46 00 00 00 00 00 49 46 00 46 00 00 00 46 46 46 46 00 00 46 46 00 00 46 46 00 00 46 46 46 46 00 00 00 00 46 00 00 46 46 00 00 00 00 46 46 46 46 00 00 00 46 46 46 00 46 46 46 00 46 46 46 00 46 00 46 46 46 00 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 46 46 00 00 46 46 46 00 46 00 46 46 46 46 46 46 00 46 00 00 46 46 00 46 00 00 49 00 00 46 00 00 46 46 00 46 46 00 46 00 46 00 46 46 46 00 46 46 46 46 00 00 00 46 46 46 00 00 46 46 46 46 00 00 46 00 00 46 00 46 46 46 46 00 46 46 46 00 00 00 00 00 00 00 00 46 00 46 46 00 46 49 00 46 46 00 46 00 00 00 00 00 00 46 00 00 46 00 46 46 00 46 46 00 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 00 00 00 46 46 00 00 46 00 00 46 00 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46
*/
