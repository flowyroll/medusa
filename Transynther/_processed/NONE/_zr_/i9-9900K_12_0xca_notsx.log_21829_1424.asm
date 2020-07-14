.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xff21, %rsi
lea addresses_WT_ht+0x16a69, %rdi
nop
nop
cmp %r10, %r10
mov $39, %rcx
rep movsb
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0xd721, %r11
nop
cmp $43145, %r15
movl $0x61626364, (%r11)
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x193b1, %rsi
lea addresses_D_ht+0x11d21, %rdi
and %r13, %r13
mov $90, %rcx
rep movsq
add %r13, %r13
lea addresses_A_ht+0x138f1, %r15
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x5021, %rsi
lea addresses_UC_ht+0x13621, %rdi
clflush (%rdi)
nop
add $17864, %r9
mov $32, %rcx
rep movsq
nop
nop
nop
cmp $47242, %rdi
lea addresses_normal_ht+0x11a1, %rdi
nop
nop
nop
sub $34596, %rcx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0xaf01, %rsi
lea addresses_normal_ht+0x121, %rdi
nop
add %r15, %r15
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
add $16586, %rsi
lea addresses_UC_ht+0x10ea1, %rsi
lea addresses_D_ht+0x7321, %rdi
nop
nop
nop
nop
nop
add $40158, %r9
mov $118, %rcx
rep movsw
nop
nop
cmp $50867, %r13
lea addresses_A_ht+0xafc1, %rsi
lea addresses_D_ht+0xa521, %rdi
dec %r15
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
add $17511, %r11
lea addresses_normal_ht+0x168e1, %r15
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r15)
add $29250, %rdi
lea addresses_UC_ht+0x62a1, %rsi
lea addresses_D_ht+0x2021, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $15, %rcx
rep movsq
nop
nop
nop
and $24941, %rdi
lea addresses_WC_ht+0x18b21, %r9
nop
nop
nop
cmp $35616, %r11
mov (%r9), %rdi
nop
mfence
lea addresses_WT_ht+0x15f21, %rdi
nop
cmp $53367, %rcx
movb (%rdi), %r9b
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0xcc35, %r15
nop
nop
nop
xor %r10, %r10
mov (%r15), %ax
nop
nop
nop
nop
nop
xor $61450, %r11

// Store
lea addresses_A+0x1c841, %r15
nop
nop
nop
nop
nop
xor $26111, %r8
movl $0x51525354, (%r15)
nop
cmp %r11, %r11

// Store
lea addresses_D+0xb6c1, %r15
nop
nop
dec %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
and %r8, %r8

// REPMOV
lea addresses_US+0xcc81, %rsi
lea addresses_US+0x17c21, %rdi
nop
add $55634, %rax
mov $0, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_D+0x1f29, %r8
nop
add %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
sub $54875, %rdi

// Store
lea addresses_D+0x17d21, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp $34642, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_WT+0x1cfe1, %rsi
sub %rdx, %rdx
movl $0x51525354, (%rsi)
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0xbf21, %rdx
nop
nop
nop
xor $17110, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_RW+0x258b, %rdx
add $49262, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Load
lea addresses_normal+0x161a1, %r15
nop
nop
nop
and %r11, %r11
mov (%r15), %ecx
add $61830, %r11

// Faulty Load
lea addresses_normal+0xbf21, %rdi
nop
nop
nop
and $20386, %r11
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
