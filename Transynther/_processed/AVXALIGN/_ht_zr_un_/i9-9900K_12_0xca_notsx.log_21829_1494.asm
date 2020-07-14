.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x154fe, %rsi
lea addresses_normal_ht+0x14176, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $14, %rcx
rep movsb
nop
nop
nop
inc %r15
lea addresses_D_ht+0x1a695, %r11
nop
nop
nop
and $61615, %r13
mov (%r11), %r15w
nop
nop
and $3544, %r13
lea addresses_WT_ht+0x1bbd6, %r15
nop
nop
nop
nop
nop
inc %rax
mov (%r15), %r11
nop
nop
inc %rdi
lea addresses_UC_ht+0x5cfe, %rsi
lea addresses_WC_ht+0x105c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $5039, %rdx
mov $49, %rcx
rep movsw
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1a1fe, %r13
nop
nop
nop
nop
nop
dec %r15
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
xor $29882, %rsi
lea addresses_WT_ht+0x1b99e, %rax
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r15
movq %r15, (%rax)
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x194fe, %rsi
lea addresses_UC_ht+0x135fe, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $117, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xedc0, %rdi
nop
nop
nop
nop
and %rax, %rax
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub $50399, %r13
lea addresses_D_ht+0x80fe, %rcx
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rcx)
nop
sub %rdi, %rdi
lea addresses_normal_ht+0xc37e, %rsi
lea addresses_UC_ht+0x193fe, %rdi
nop
nop
nop
nop
add $32862, %rdx
mov $80, %rcx
rep movsw
sub %rdx, %rdx
lea addresses_UC_ht+0x10cfe, %rsi
lea addresses_WT_ht+0xdfb7, %rdi
nop
nop
nop
nop
and $10389, %rdx
mov $41, %rcx
rep movsb
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x11a7e, %rcx
clflush (%rcx)
nop
nop
dec %rdx
movb $0x61, (%rcx)
nop
nop
add $14150, %rdi
lea addresses_A_ht+0xe5fe, %rsi
lea addresses_D_ht+0x6dce, %rdi
lfence
mov $28, %rcx
rep movsl
nop
nop
sub $16540, %r15
lea addresses_A_ht+0xef3e, %rsi
lea addresses_UC_ht+0xf9fe, %rdi
clflush (%rsi)
nop
nop
sub %r15, %r15
mov $122, %rcx
rep movsb
cmp $1298, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0xd2fe, %rdi
cmp %rcx, %rcx
mov (%rdi), %esi
inc %rsi

// Load
lea addresses_PSE+0x8142, %r11
nop
nop
lfence
movb (%r11), %r14b
nop
sub %rdi, %rdi

// Load
lea addresses_WT+0x1ebfe, %rcx
add $20322, %r15
mov (%rcx), %r12d
nop
nop
nop
nop
dec %rsi

// Load
mov $0xa12, %r12
sub %r11, %r11
mov (%r12), %r15d
nop
nop
sub $44023, %rdi

// Store
lea addresses_WC+0x5ff7, %rdi
nop
and $24276, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
xor $65201, %rdi

// Store
lea addresses_normal+0x139fe, %rsi
nop
nop
nop
nop
cmp $14540, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
sub %r11, %r11

// Load
lea addresses_WT+0x7b7e, %r14
clflush (%r14)
dec %r15
mov (%r14), %r12d
nop
and %rdi, %rdi

// Store
lea addresses_normal+0x1887e, %r11
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x51, (%r11)
nop
nop
add $25298, %r11

// Store
lea addresses_PSE+0x5a3e, %rcx
inc %r15
movb $0x51, (%rcx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
nop
nop
nop
and %r14, %r14

// Store
mov $0xde4, %r15
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
xor %rdi, %rdi

// Faulty Load
mov $0x6850f500000004fe, %r11
nop
sub $36120, %r14
vmovaps (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'46': 6960, 'b7': 1, '48': 2, '00': 115, '45': 6679, '44': 8072}
00 46 45 46 45 46 45 46 44 00 45 44 46 45 44 46 45 46 45 46 44 45 46 46 44 44 45 44 46 45 44 46 45 44 45 44 44 45 44 46 45 46 45 44 46 45 44 46 45 46 46 44 45 46 45 44 45 44 44 45 44 46 45 44 44 45 44 45 44 44 45 46 46 45 44 46 45 44 45 44 46 45 46 45 46 44 46 45 46 45 44 44 44 45 46 44 46 46 45 44 46 44 44 44 44 45 46 45 44 46 45 46 45 46 44 45 44 46 46 45 44 46 45 46 44 45 44 44 45 44 44 45 44 45 44 44 45 44 45 44 46 46 45 44 46 44 46 44 44 45 44 44 45 46 45 46 44 44 45 44 46 45 46 44 44 45 44 46 45 44 46 45 44 46 44 44 45 46 45 44 46 45 46 45 44 44 46 46 45 44 00 46 45 46 45 44 44 45 44 46 45 44 44 45 44 46 44 45 44 45 44 46 45 44 44 45 46 46 45 44 45 46 45 44 46 44 44 45 46 44 44 45 44 44 45 44 45 46 45 44 44 45 46 45 44 46 45 44 46 44 46 45 46 45 44 44 45 44 46 45 46 44 45 44 44 45 46 45 46 44 44 45 46 44 46 45 44 46 45 44 46 45 44 44 45 44 46 45 44 46 46 44 45 44 46 46 44 45 46 44 44 44 46 44 45 44 46 45 44 46 44 46 45 46 46 44 46 44 45 44 45 44 46 44 46 45 44 46 46 45 44 46 45 46 44 45 44 46 44 46 44 44 44 46 44 44 44 44 45 46 45 44 44 45 46 46 45 44 46 45 46 45 46 44 46 45 46 45 44 44 45 46 46 44 45 46 46 46 44 46 44 46 45 46 46 45 44 46 45 44 46 45 44 46 46 45 44 46 45 44 44 45 46 45 44 46 45 44 46 44 46 45 44 45 46 45 44 46 45 46 45 46 44 45 44 46 45 44 44 45 44 44 44 44 45 44 44 45 46 45 46 45 46 45 44 44 45 46 46 44 46 45 44 46 45 44 44 45 44 45 46 45 44 44 45 44 46 45 44 45 44 46 46 44 45 46 46 45 46 45 44 46 45 46 45 46 44 45 46 45 46 45 46 45 44 46 45 44 44 45 44 45 46 45 46 44 46 45 44 44 45 44 46 44 44 45 46 45 44 44 45 46 45 46 45 46 46 44 46 45 44 46 44 44 45 46 46 45 44 44 45 44 46 44 46 45 46 45 44 46 44 44 45 46 44 44 45 44 46 44 46 46 45 44 46 45 46 45 46 44 45 46 44 44 44 45 44 46 45 46 45 44 44 45 44 46 45 44 46 45 44 46 45 46 45 46 45 44 44 44 45 44 46 45 44 46 44 46 45 44 45 44 44 45 46 46 44 44 45 44 46 44 46 44 46 45 44 45 44 44 45 46 45 46 44 44 45 44 46 44 45 46 45 44 46 46 44 45 46 46 44 45 46 45 46 44 45 46 45 44 46 45 44 44 45 44 46 44 45 44 44 45 44 45 44 46 45 44 44 45 46 45 44 46 45 46 45 46 45 44 46 44 46 45 44 46 44 46 44 44 45 46 46 45 46 44 46 45 46 45 46 44 45 46 45 46 44 46 45 46 45 46 44 45 46 45 46 46 45 44 45 46 45 44 46 46 45 44 46 44 46 45 44 46 46 44 46 45 46 44 44 45 44 46 44 46 46 44 46 46 44 46 46 44 45 44 46 45 46 45 44 46 45 44 46 44 44 45 46 45 46 44 46 45 46 45 46 45 44 46 45 44 46 45 44 45 44 00 45 44 46 45 44 46 45 44 45 44 46 44 46 45 44 46 44 45 44 44 45 44 46 45 44 46 46 45 44 46 45 44 45 46 44 44 45 46 45 44 46 44 44 45 44 44 45 46 44 44 45 46 45 44 44 45 46 45 46 45 46 45 46 44 46 45 44 46 45 46 45 46 44 44 45 44 46 46 46 44 45 46 45 46 44 44 45 44 46 45 44 46 45 44 45 44 46 45 46 44 46 46 44 44 45 46 45 44 45 44 45 44 44 45 46 44 46 44 44 45 44 46 44 46 45 44 45 44 00 45 44 46 45 44 46 45 44 46 44 44 45 44 46 45 46 44 45 46 45 46 44 45 46 45 46 45 46 45 44 44 45 46 44 45 46 45 46 44 44 45 44 46 46 44 46 44 46 44 44 45 46 45 44 45 46 44 46 44 44 45 44 46 44 46 44 44 45 44 00 45 44 46
*/
