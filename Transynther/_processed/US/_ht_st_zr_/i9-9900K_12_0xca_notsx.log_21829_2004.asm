.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xdf4d, %rsi
lea addresses_UC_ht+0x7709, %rdi
nop
nop
dec %r12
mov $53, %rcx
rep movsl
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x175dd, %r14
clflush (%r14)
nop
xor $35201, %r11
mov $0x6162636465666768, %r9
movq %r9, (%r14)
sub %rcx, %rcx
lea addresses_WT_ht+0x23cd, %rsi
lea addresses_D_ht+0x128dd, %rdi
nop
nop
nop
nop
sub $25690, %r9
mov $107, %rcx
rep movsw
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x1a97d, %rsi
lea addresses_UC_ht+0x1b32d, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $52, %rcx
rep movsl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0xe051, %rsi
nop
add $54972, %r9
movb (%rsi), %r14b
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xd34d, %r14
nop
nop
nop
nop
nop
inc %rdi
movw $0x6162, (%r14)
nop
nop
add $60682, %r11
lea addresses_UC_ht+0x16b4d, %rsi
lea addresses_UC_ht+0xbfad, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $21690, %r11
mov $86, %rcx
rep movsb
nop
xor $38542, %rdx
lea addresses_UC_ht+0x644d, %rsi
lea addresses_D_ht+0x125, %rdi
nop
nop
nop
nop
add $9560, %r12
mov $112, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1d25d, %rdi
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdi)
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x6fb1, %rsi
lea addresses_normal+0xeb4d, %rdi
nop
nop
and $12999, %r14
mov $5, %rcx
rep movsl
nop
xor $43839, %rsi

// Load
lea addresses_US+0x1b9f7, %rcx
nop
nop
inc %rdi
mov (%rcx), %r11
nop
nop
nop
nop
sub $17310, %r14

// Load
mov $0x7557d10000000531, %rcx
nop
nop
nop
cmp $9631, %r11
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
xor $4017, %rdi

// Load
lea addresses_US+0x6f65, %r14
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r14), %rbx
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_WC+0xeecd, %r11
nop
nop
nop
nop
nop
inc %rbx
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
xor $26159, %rbx

// Load
lea addresses_US+0xdc4d, %r11
nop
nop
nop
nop
cmp %rdi, %rdi
movaps (%r11), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
cmp $43133, %rcx

// Faulty Load
lea addresses_US+0x15b4d, %r12
nop
and %r11, %r11
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'49': 8, '00': 8864, '33': 12461, '45': 496}
00 33 00 00 33 00 00 33 33 33 00 00 33 00 00 33 33 33 00 33 33 33 00 00 00 33 33 33 33 00 33 33 00 33 00 00 33 33 00 33 33 00 33 00 33 00 33 33 33 33 33 00 00 45 00 33 33 00 00 33 33 33 33 00 33 00 33 33 00 33 00 33 33 00 33 00 00 00 00 33 33 33 33 00 33 33 00 00 45 33 00 33 00 00 00 00 33 00 33 33 33 00 00 45 00 00 33 33 33 00 33 00 00 33 00 33 00 33 00 33 33 33 33 00 33 33 33 33 00 33 33 00 33 33 00 00 33 00 00 33 33 45 00 33 00 00 33 00 33 33 33 33 33 33 00 33 00 00 00 33 00 00 00 00 33 33 00 33 00 45 33 33 00 33 33 33 00 33 33 33 00 33 33 45 00 00 00 33 00 33 00 33 00 33 00 33 00 33 33 33 33 00 33 33 33 45 33 00 00 33 33 33 33 00 33 33 00 33 00 33 33 00 33 33 33 00 00 33 33 00 33 33 00 00 33 33 33 33 33 33 00 33 00 33 33 00 33 33 00 33 33 33 00 33 33 00 33 33 33 00 33 00 33 33 33 00 33 33 00 33 33 00 33 45 00 33 00 00 33 00 33 00 33 33 00 33 33 33 00 33 00 33 33 33 33 00 33 33 00 33 33 00 00 33 33 33 33 33 33 00 33 33 00 00 33 33 00 00 33 00 33 33 00 00 33 33 00 00 33 00 33 33 33 33 00 33 00 00 33 33 33 00 33 00 33 00 00 33 33 33 33 45 33 33 00 00 33 00 33 33 33 00 00 33 00 33 00 33 00 33 00 33 33 33 33 00 33 00 33 33 33 00 33 00 00 33 00 00 33 00 33 00 00 00 00 33 00 33 00 33 00 33 00 00 33 33 33 33 00 33 33 33 00 00 00 33 33 00 33 00 33 33 00 33 33 33 33 00 33 00 33 00 00 33 33 00 33 00 00 33 33 00 33 33 00 33 00 00 33 00 33 00 33 00 33 33 33 00 33 00 33 33 00 00 00 33 00 00 33 33 00 33 33 00 33 33 00 33 00 33 00 00 33 00 33 00 00 33 00 33 33 33 33 00 00 33 33 33 00 33 00 33 00 33 33 00 33 00 33 00 00 00 00 33 33 33 33 33 00 33 33 00 33 33 00 33 00 00 33 33 00 00 00 33 33 00 33 33 00 33 00 33 00 45 33 33 33 00 33 33 33 00 33 00 33 33 33 33 33 33 00 33 00 00 33 33 00 00 33 33 00 33 33 33 00 33 00 33 33 00 00 33 45 00 33 33 00 00 00 33 00 33 33 33 00 33 33 00 33 33 00 33 33 33 00 33 33 00 33 00 33 33 00 33 00 33 00 33 33 33 00 33 00 33 33 45 00 00 33 33 00 33 33 00 33 33 00 00 00 33 00 33 00 33 00 00 33 00 33 33 00 33 00 33 33 00 00 33 00 00 00 00 00 33 00 00 33 00 33 00 33 00 00 33 00 00 33 33 33 33 00 33 00 00 00 00 33 33 33 00 00 33 33 33 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 33 00 33 33 00 33 45 00 33 00 33 00 45 33 33 00 33 45 33 33 33 00 33 33 33 33 00 33 00 33 00 33 00 33 00 00 33 33 00 00 33 33 00 33 00 33 33 33 00 33 00 33 33 33 33 00 33 45 33 00 33 33 33 00 33 33 00 33 33 00 33 33 33 00 00 00 33 00 00 00 33 33 00 33 33 00 33 33 33 00 33 33 33 00 33 00 33 33 00 33 00 33 33 00 33 00 00 33 33 33 00 33 00 33 45 00 33 00 33 33 33 00 33 33 33 33 33 00 33 00 33 00 33 00 33 00 33 00 00 33 33 33 33 00 33 00 00 33 00 33 33 33 33 33 33 00 33 33 33 33 00 33 00 33 33 33 45 00 33 00 33 00 33 00 33 33 33 33 33 33 00 33 00 33 00 33 33 00 33 45 33 00 33 00 00 33 33 33 00 00 33 33 00 33 00 33 33 33 00 33 33 00 33 00 33 00 33 00 33 33 33 33 45 33 00 45 00 33 33 00 33 33 33 00 33 33 33 33 33 00 00 33 33 00 33 33 00 00 00 33 33 33 33 00 45 33 00 00 33 00 33 45 00 33 33 00 33 00 33 00 45 33 33 00 00 00 33 33 00 33 33 33 00 33 33 00 33 45 33 00 33
*/
