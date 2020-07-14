.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1c04, %rsi
lea addresses_WC_ht+0xb484, %rdi
inc %rbx
mov $23, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $50216, %r11
lea addresses_D_ht+0x16a04, %r12
nop
nop
nop
nop
sub $35312, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r12)
nop
nop
and $35692, %rdi
lea addresses_normal_ht+0x5e04, %rsi
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rsi
movaps %xmm2, (%rsi)
nop
nop
nop
nop
cmp $26123, %r12
lea addresses_D_ht+0xf4a4, %rsi
lea addresses_WC_ht+0x19f7c, %rdi
nop
inc %r11
mov $57, %rcx
rep movsb
dec %r12
lea addresses_D_ht+0x5044, %r11
nop
nop
nop
nop
and $58524, %rcx
mov (%r11), %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1204, %rdi
nop
and $60267, %rsi
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x63b4, %rsi
nop
nop
nop
sub $18253, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x8ef5, %rsi
lea addresses_WC_ht+0x3a10, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $104, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x10cc4, %rsi
nop
nop
sub $17247, %r11
movl $0x61626364, (%rsi)
nop
nop
dec %rcx
lea addresses_WT_ht+0x4a94, %rdi
nop
nop
nop
nop
xor $49086, %rsi
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
inc %r12
lea addresses_A_ht+0x18694, %rbp
xor $41802, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rbp
movntdq %xmm2, (%rbp)
nop
nop
nop
nop
cmp $7702, %rbx
lea addresses_normal_ht+0x4324, %rcx
nop
nop
nop
xor %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
xor $63622, %r11
lea addresses_A_ht+0x17204, %r12
nop
nop
nop
nop
and $38961, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r12)
nop
and $34246, %r11
lea addresses_normal_ht+0x5674, %r12
sub $6363, %rbx
mov (%r12), %bp
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x4794, %rdx
cmp %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
inc %r11

// Load
lea addresses_WC+0xaa04, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r11
xor $350, %r10

// Faulty Load
mov $0x13b1c80000000204, %r11
clflush (%r11)
nop
nop
nop
cmp %r14, %r14
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 61, '44': 65, '49': 2}
00 44 44 00 00 44 44 00 00 00 44 00 00 44 00 00 00 00 44 44 00 44 00 00 44 44 00 00 00 00 44 00 00 44 44 00 00 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 00 44 00 44 44 44 44 44 00 44 44 00 44 00 00 00 44 00 00 44 00 00 44 00 00 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 00 00 00 49 00 00 44 00 00 44 00 44 00 44 49 00 44 44 00 00 44 44 00 00 00 00 00 00 44 44 44 44 44 44 00 44
*/
